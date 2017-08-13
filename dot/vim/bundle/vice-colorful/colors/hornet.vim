" Maintainer:	Taurus Olson
" Mail:         taurusolson@gmail.com
" Version:      1.0.2
" Last Change: Ven mai 06 09:00  2011 C
" Credits:      This is a modification of busybee.vim color scheme

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "hornet"

" Vim >= 7.0 specific colors --------------------------------------------------

if version >= 700
  hi CursorLine    guibg=#303030 ctermbg=235 cterm=None gui=none
                    hi CursorColumn  guibg=#202020 ctermbg=234
  hi MatchParen    guifg=#d0ffc0 guibg=#202020 gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu 	   guifg=#ffffff guibg=#202020 ctermfg=255 ctermbg=238
  hi PmenuSel 	   guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors --------------------------------------------------------------

hi Cursor 	        guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal 	        guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=253 ctermbg=234
hi NonText          guifg=#808080 guibg=#202020 gui=none ctermfg=244 ctermbg=233
hi LineNr 	        guifg=#303030 guibg=#202020 gui=none ctermfg=244 ctermbg=233
hi Title	        guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual	        guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey       guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236
hi Directory 	    guifg=#fecf35 gui=none ctermfg=148
hi StatusLine       ctermfg=230     ctermbg=235     cterm=none      guifg=#d3d3d5 guibg=#303030   gui=none
hi VertSplit        ctermfg=236     ctermbg=235     cterm=none      guifg=#444444 guibg=#303030   gui=none
hi StatusLineNC     ctermfg=238     ctermbg=235     cterm=none      guifg=#939395 guibg=#303030   gui=none

" Diff ------------------------------------------------------------------------

hi Folded 	        guibg=#384048 guifg=#a0a8b0 gui=none ctermfg=242 ctermbg=235
hi FoldColumn       guibg=#384048 guifg=#a0a8b0 gui=none ctermfg=242 ctermbg=235
hi DiffAdd          ctermbg=233
hi DiffDelete       ctermbg=233 ctermfg=235
hi DiffChange       ctermbg=233
hi DiffText         ctermbg=0

" Syntax highlighting ---------------------------------------------------------

hi Comment          guifg=#757575 gui=italic    ctermfg=244
hi Todo             guifg=#fec135 gui=none      ctermfg=245
hi Boolean          guifg=#b1d631 gui=none      ctermfg=148
hi String           guifg=#fecf35 gui=none      ctermfg=148
hi Identifier       guifg=#b1d631 gui=none      ctermfg=148
hi Function         guifg=#fdb32a gui=none      ctermfg=255
hi Type             guifg=#7e8aa2 gui=none      ctermfg=103
hi Statement        guifg=#7e8aa2 gui=none      ctermfg=103
hi Keyword          guifg=#ff9800 gui=none      ctermfg=208
hi Constant         guifg=#c03000 gui=none      ctermfg=208
hi Number           guifg=#ff9800 gui=none      ctermfg=208
hi Special          guifg=#4bb5c1 gui=none      ctermfg=208
hi PreProc          guifg=#96ca2d gui=none      ctermfg=230
hi Todo             guifg=#fec135 guibg=#202020 gui=none
hi Search           guifg=#000000 guibg=#aeee00 gui=none
hi Define           guifg=#ff9800 gui=none      ctermfg=208

" Code-specific colors --------------------------------------------------------

" Python
hi pythonImport    guifg=#7fc6bc gui=none ctermfg=255
hi pythonException guifg=#aeee00 gui=none ctermfg=200
hi pythonOperator  guifg=#7e8aa2 gui=none ctermfg=103
hi pythonBuiltinFunction guifg=#009000 gui=none ctermfg=200
hi pythonExClass   guifg=#009000 gui=none ctermfg=200
hi pythonAssignment guifg=#757575 gui=none ctermfg=244
hi pythonSelf       ctermfg=199

" Ruby
hi rubyBeginEnd    guifg=#48BB8D gui=none
hi rubyClass       guifg=#E42F29 gui=none
hi rubyClassVariable guifg=#29AEE3 gui=none

" HTML
hi htmlItalic   cterm=bold

" syntastic
hi Error            ctermbg=233 ctermfg=red
hi Todo             guifg=#fec135 gui=none      ctermbg=233 ctermfg=red

" vim-gitgutter
hi! link SignColumn Linenr

" vim-indent-guide
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=235
