"=============================================================================
" FILE: unite.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu@gmail.com>
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

augroup plugin-unite
  autocmd CursorHold *
        \ call unite#handlers#_on_cursor_hold()
augroup END

function! unite#version() "{{{
  return str2nr(printf('%02d%02d', 6, 2))
endfunction"}}}

" User functions. "{{{
function! unite#set_profile(profile_name, option_name, value) "{{{
  return unite#custom#profile(a:profile_name, a:option_name, a:value)
endfunction"}}}
function! unite#get_profile(profile_name, option_name) "{{{
  return unite#custom#get_profile(a:profile_name, a:option_name)
endfunction"}}}
function! unite#set_substitute_pattern(buffer_name, pattern, subst, ...) "{{{
  call unite#print_error('unite#set_substitute_pattern() is deprecated.')
  call unite#print_error('Please use unite#set_profile() '.
        \ 'or unite#custom#substitute() instead of it.')
endfunction"}}}
function! unite#set_buffer_name_option(buffer_name, option_name, value) "{{{
  call unite#print_error('unite#set_buffer_name_options() is deprecated.')
  call unite#print_error('Please use unite#set_profile() instead of it.')
endfunction"}}}

function! unite#custom_filters(source_name, expr) "{{{
  return unite#custom#source(a:source_name, 'filters', a:expr)
endfunction"}}}
function! unite#custom_alias(kind, name, action) "{{{
  return unite#custom#alias(a:kind, a:name, a:action)
endfunction"}}}
function! unite#custom_default_action(kind, default_action) "{{{
  return unite#custom#default_action(a:kind, a:default_action)
endfunction"}}}
function! unite#custom_action(kind, name, action) "{{{
  return unite#custom#action(a:kind, a:name, a:action)
endfunction"}}}
function! unite#custom_max_candidates(source_name, max) "{{{
  return unite#custom#source(a:source_name,
        \ 'max_candidates', a:max)
endfunction"}}}
function! unite#custom_source(source_name, option_name, value) "{{{
  return unite#custom#source(
        \ a:source_name, a:option_name, a:value)
endfunction"}}}

function! unite#define_source(source) "{{{
  let dynamic = unite#variables#dynamic()
  for source in unite#util#convert2list(a:source)
    let dynamic.sources[source.name] = source
  endfor
endfunction"}}}
function! unite#define_kind(kind) "{{{
  let dynamic = unite#variables#dynamic()
  for kind in unite#util#convert2list(a:kind)
    let dynamic.kinds[kind.name] = kind
  endfor
endfunction"}}}
function! unite#define_filter(filter) "{{{
  let dynamic = unite#variables#dynamic()
  for filter in unite#util#convert2list(a:filter)
    let dynamic.filters[filter.name] = filter
  endfor
endfunction"}}}
function! unite#undef_source(name) "{{{
  let dynamic = unite#variables#dynamic()
  if has_key(dynamic.sources, a:name)
    call remove(dynamic.sources, a:name)
  endif
endfunction"}}}
function! unite#undef_kind(name) "{{{
  let dynamic = unite#variables#dynamic()
  if has_key(dynamic.kinds, a:name)
    call remove(dynamic.kinds, a:name)
  endif
endfunction"}}}
function! unite#undef_filter(name) "{{{
  let dynamic = unite#variables#dynamic()
  if has_key(dynamic.filters, a:name)
    call remove(dynamic.filters, a:name)
  endif
endfunction"}}}

function! unite#do_action(action) "{{{
  return printf("%s:\<C-u>call unite#action#do(%s)\<CR>",
        \             (mode() ==# 'i' ? "\<ESC>" : ''), string(a:action))
endfunction"}}}
function! unite#smart_map(narrow_map, select_map) "{{{
  return (line('.') == unite#get_current_unite().prompt_linenr
        \ && empty(unite#helper#get_marked_candidates())) ?
        \   a:narrow_map : a:select_map
endfunction"}}}
function! unite#start_complete(...) "{{{
  return call('unite#start#complete', a:000)
endfunction "}}}
function! unite#get_cur_text() "{{{
  let cur_text =
        \ (mode() ==# 'i' ? (col('.')-1) : col('.')) >= len(getline('.')) ?
        \      getline('.') :
        \      matchstr(getline('.'),
        \         '^.*\%' . col('.') . 'c' . (mode() ==# 'i' ? '' : '.'))

  return cur_text
endfunction "}}}

function! unite#take_action(action_name, candidate) "{{{
  call unite#action#take(a:action_name, a:candidate, 0)
endfunction"}}}
function! unite#take_parents_action(action_name, candidate, extend_candidate) "{{{
  call unite#action#take(a:action_name,
        \ extend(deepcopy(a:candidate), a:extend_candidate), 1)
endfunction"}}}
"}}}

" Core functions. "{{{
function! unite#get_kinds(...) "{{{
  return call('unite#variables#kinds', a:000)
endfunction"}}}
function! unite#get_sources(...) "{{{
  return call('unite#variables#sources', a:000)
endfunction"}}}
function! unite#get_all_sources(...) "{{{
  return call('unite#variables#all_sources', a:000)
endfunction"}}}
function! unite#get_filters(...) "{{{
  return call('unite#variables#filters', a:000)
endfunction"}}}
"}}}

" Helper functions. "{{{
function! unite#is_win() "{{{
  return unite#util#is_windows()
endfunction"}}}
function! unite#loaded_source_names() "{{{
  return map(copy(unite#loaded_sources_list()), 'v:val.name')
endfunction"}}}
function! unite#loaded_source_names_string() "{{{
  return join(unite#loaded_source_names())
endfunction"}}}
function! unite#loaded_sources_list() "{{{
  return unite#variables#loaded_sources()
endfunction"}}}
function! unite#get_vimfiler_source_names() "{{{
  return map(filter(values(unite#init#_sources()),
        \ 'has_key(v:val, "vimfiler_check_filetype")'), 'v:val.name')
endfunction"}}}
function! unite#get_unite_candidates() "{{{
  return unite#get_current_unite().current_candidates
endfunction"}}}
function! unite#get_context() "{{{
  let unite = unite#get_current_unite()
  return has_key(unite, 'context') ?
        \ unite.context : unite#init#_context({})
endfunction"}}}
function! unite#set_context(context) "{{{
  let old_context = unite#get_context()

  if exists('b:unite') && !unite#variables#use_current_unite()
    let b:unite.context = a:context
  else
    let current_unite = unite#variables#current_unite()
    let current_unite.context = a:context
  endif

  return old_context
endfunction"}}}
function! unite#get_unite_winnr(buffer_name) "{{{
  return unite#helper#get_unite_winnr(a:buffer_name)
endfunction"}}}

function! unite#force_redraw(...) "{{{
  call unite#view#_redraw(1, get(a:000, 0, 0), get(a:000, 1, 0))
endfunction"}}}
function! unite#redraw(...) "{{{
  call unite#view#_redraw(0, get(a:000, 0, 0), get(a:000, 1, 0))
endfunction"}}}
function! unite#get_status_string() "{{{
  if !exists('b:unite')
    return ''
  endif

  return unite#view#_get_status_plane_string()
        \ . ' | '. unite#view#_get_status_tail_string()
endfunction"}}}
function! unite#get_marked_candidates() "{{{
  return unite#helper#get_marked_candidates()
endfunction"}}}
function! unite#get_input() "{{{
  return unite#helper#get_input()
endfunction"}}}
function! unite#get_self_functions() "{{{
  return split(matchstr(expand('<sfile>'), '^function \zs.*$'), '\.\.')[: -2]
endfunction"}}}
function! unite#get_current_unite() "{{{
  return exists('b:unite') && !unite#variables#use_current_unite() ?
        \ b:unite : unite#variables#current_unite()
endfunction"}}}
function! unite#set_current_unite(unite) "{{{
  return unite#variables#set_current_unite(a:unite)
endfunction"}}}
function! unite#add_previewed_buffer_list(bufnr) "{{{
  return unite#view#_add_previewed_buffer_list(a:bufnr)
endfunction"}}}
function! unite#remove_previewed_buffer_list(bufnr) "{{{
  return unite#view#_remove_previewed_buffer_list(a:bufnr)
endfunction"}}}
function! unite#get_data_directory() "{{{
  let g:unite_data_directory =
        \ substitute(substitute(fnamemodify(
        \ get(g:, 'unite_data_directory',
        \  ($XDG_CACHE_HOME != '' ?
        \   $XDG_CACHE_HOME . '/unite' : expand('~/.cache/unite'))),
        \  ':p'), '\\', '/', 'g'), '/$', '', '')

  if !isdirectory(g:unite_data_directory)
    call mkdir(g:unite_data_directory, 'p')
  endif

  return g:unite_data_directory
endfunction"}}}


" Utils.
function! unite#print_error(message) "{{{
  return unite#view#_print_error(a:message)
endfunction"}}}
function! unite#print_source_error(message, source_name) "{{{
  return unite#view#_print_source_error(a:message, a:source_name)
endfunction"}}}
function! unite#print_message(message) "{{{
  return unite#view#_print_message(a:message)
endfunction"}}}
function! unite#print_source_message(message, source_name) "{{{
  return unite#view#_print_source_message(a:message, a:source_name)
endfunction"}}}
function! unite#clear_message() "{{{
  return unite#view#_clear_message()
endfunction"}}}
function! unite#substitute_path_separator(path) "{{{
  return unite#util#substitute_path_separator(a:path)
endfunction"}}}
function! unite#path2directory(path) "{{{
  return unite#util#path2directory(a:path)
endfunction"}}}
"}}}

" Command functions.
function! unite#start(...) "{{{
  return call('unite#start#standard', a:000)
endfunction"}}}
function! unite#start_script(...) "{{{
  return call('unite#start#script', a:000)
endfunction"}}}
function! unite#start_temporary(...) "{{{
  return call('unite#start#temporary', a:000)
endfunction"}}}
function! unite#vimfiler_check_filetype(...) "{{{
  return call('unite#start#vimfiler_check_filetype', a:000)
endfunction"}}}
function! unite#get_candidates(...) "{{{
  return call('unite#start#get_candidates', a:000)
endfunction"}}}
function! unite#get_vimfiler_candidates(...) "{{{
  return call('unite#start#get_vimfiler_candidates', a:000)
endfunction"}}}
function! unite#resume(...) "{{{
  return call('unite#start#resume', a:000)
endfunction"}}}

function! unite#vimfiler_complete(sources, arglead, cmdline, cursorpos) "{{{
  return unite#complete#vimfiler(a:sources, a:arglead, a:cmdline, a:cursorpos)
endfunction"}}}
function! unite#complete_source(arglead, cmdline, cursorpos) "{{{
  return unite#complete#source(a:arglead, a:cmdline, a:cursorpos)
endfunction"}}}
function! unite#complete_buffer_name(arglead, cmdline, cursorpos) "{{{
  return unite#complete#buffer_name(a:arglead, a:cmdline, a:cursorpos)
endfunction"}}}
function! unite#args_complete(sources, arglead, cmdline, cursorpos) "{{{
  return unite#complete#args(a:sources, a:arglead, a:cmdline, a:cursorpos)
endfunction"}}}
function! unite#dummy_completefunc(findstart, base) "{{{
  return a:findstart ? -1 : []
endfunction"}}}

function! unite#all_quit_session(...)  "{{{
  call unite#view#_quit(get(a:000, 0, 1), 1)
endfunction"}}}
function! unite#force_quit_session()  "{{{
  call unite#view#_quit(1)

  let context = unite#get_context()
  if context.temporary && !empty(context.unite__old_buffer_info)
    call unite#start#resume_from_temporary(context)
  endif
endfunction"}}}
function! unite#quit_session()  "{{{
  call unite#view#_quit(0)

  let context = unite#get_context()
  if context.temporary && !empty(context.unite__old_buffer_info)
    call unite#start#resume_from_temporary(context)
  endif
endfunction"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker
