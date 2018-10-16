" Minimalist - A Material Colorscheme Darker
"
" Author:       Diki Andriansyah <diki1aap@gmail.com>
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.1
" License:      MIT

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "yellow-metal"

"""""""""""""""""""""""
" General
"""""""""""""""""""""""
hi ColorColumn      ctermfg=NONE    ctermbg=233     cterm=NONE      guifg=NONE          guibg=#121212   gui=NONE
hi Cursor           ctermfg=0       ctermbg=255     cterm=NONE      guifg=#1C1C1C       guibg=#EEEEEE   gui=NONE
hi CursorColumn     ctermfg=NONE    ctermbg=233     cterm=NONE      guifg=NONE          guibg=#121212   gui=NONE
hi CursorLine       ctermfg=NONE     ctermbg=NONE   cterm=underline guifg=NONE       guibg=NONE      gui=underline
hi DiffAdd          ctermfg=255     ctermbg=64      cterm=bold      guifg=#EEEEEE       guibg=#5F8700   gui=bold
hi DiffChange       ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi DiffDelete       ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi DiffText         ctermfg=255     ctermbg=24      cterm=bold      guifg=#EEEEEE       guibg=#005F87   gui=bold
hi Directory        ctermfg=179     ctermbg=NONE    cterm=NONE      guifg=#D7AF5F       guibg=NONE      gui=NONE
hi ErrorMsg         ctermfg=255     ctermbg=167     cterm=NONE      guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi Folded           ctermfg=242     ctermbg=234     cterm=NONE      guifg=#666666       guibg=#1C1C1C   gui=NONE
hi IncSearch        ctermfg=234     ctermbg=75      cterm=NONE      guifg=#1C1C1C       guibg=#5FAFFF   gui=NONE
hi LineNr           ctermfg=59      ctermbg=235     cterm=NONE      guifg=#5F5F5F       guibg=#262626   gui=NONE
hi MatchParen       ctermfg=NONE    ctermbg=NONE    cterm=underline guifg=NONE          guibg=NONE      gui=underline
hi NonText          ctermfg=234     ctermbg=234     cterm=NONE      guifg=#1C1C1C       guibg=#1C1C1C   gui=NONE
hi Normal           ctermfg=229     ctermbg=234     cterm=NONE      guifg=#FFFFB3       guibg=#1C1C1C   gui=NONE
hi Pmenu            ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE      guifg=NONE          guibg=#5F5F5F   gui=NONE
hi Search term=reverse ctermfg=NONE ctermbg=NONE cterm=reverse,bold guifg=NONE          guibg=NONE      gui=reverse,bold
hi SignColumn       ctermfg=NONE    ctermbg=237     cterm=NONE      guifg=NONE          guibg=#3A3A3A   gui=NONE
hi StatusLine       ctermfg=255     ctermbg=241     cterm=bold      guifg=#EEEEEE       guibg=#606060   gui=bold
hi StatusLineNC     ctermfg=255     ctermbg=241     cterm=NONE      guifg=#EEEEEE       guibg=#606060   gui=NONE
hi Title            ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi VertSplit        ctermfg=241     ctermbg=241     cterm=NONE      guifg=#606060       guibg=#606060   gui=NONE
hi Visual           ctermfg=241     ctermbg=229     cterm=reverse   guifg=#606060       guibg=#FFFFB3   gui=reverse
hi WarningMsg       ctermfg=255     ctermbg=167     cterm=NONE      guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi NERDTreeUp       ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeDir      ctermfg=141     ctermbg=NONE    cterm=bold      guifg=#af87d7       guibg=NONE      gui=bold
hi NERDTreeDirSlash ctermfg=229     ctermbg=NONE    cterm=NONE      guifg=#FFFFB3       guibg=NONE      gui=NONE
hi NERDTreeFile     ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87afd7       guibg=NONE      gui=NONE
hi NERDTreeCWD      ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeOpenable ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeClosable ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE

"""""""""""""""""""""""
" Syntax Highlighting
"""""""""""""""""""""""
hi Boolean          ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi Character        ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Comment          ctermfg=246     ctermbg=NONE    cterm=NONE      guifg=#999999       guibg=NONE      gui=NONE
hi Conditional      ctermfg=79      ctermbg=NONE    cterm=NONE      guifg=#49A693       guibg=NONE      gui=NONE
hi Constant         ctermfg=141     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Define           ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi Float            ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Function         ctermfg=94      ctermbg=NONE    cterm=NONE      guifg=#A47E38       guibg=NONE      gui=NONE
hi Identifier       ctermfg=7       ctermbg=NONE    cterm=italic      guifg=#cccccc       guibg=NONE      gui=italic
hi Keyword          ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Label            ctermfg=229     ctermbg=NONE    cterm=NONE      guifg=#FFFFB3       guibg=NONE      gui=NONE
hi Number           ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi Operator         ctermfg=139     ctermbg=NONE    cterm=NONE      guifg=#B17A9B       guibg=NONE      gui=NONE
hi PreProc          ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Repeat           ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Special          ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi SpecialComment   ctermfg=242     ctermbg=NONE    cterm=NONE      guifg=#666666       guibg=NONE      gui=NONE
hi SpecialKey       ctermfg=242     ctermbg=237     cterm=NONE      guifg=#5F5F5F       guibg=#3A3A3A   gui=NONE
hi Statement        ctermfg=2       ctermbg=NONE    cterm=NONE      guifg=#49A664       guibg=NONE      gui=NONE
hi StorageClass     ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=italic
hi String           ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi Structure        ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi Tag              ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi Todo             ctermfg=74      ctermbg=234     cterm=inverse,bold guifg=#5FAFD7    guibg=#1C1C1C   gui=inverse,bold
hi Type             ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE

"""""""""""""""""""""""
" Supports
"""""""""""""""""""""""
hi cInclude             ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE " C++
hi cOperator            ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cppStatement         ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssAttr              ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " CSS/CSS3
hi cssAttrComma         ctermfg=231     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi cssBoxProp           ctermfg=152     ctermbg=NONE    cterm=NONE      guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssBraces            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssClassName         ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi cssColor             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssCommonAttr        ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssFontAttr          ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi cssFunctionName      ctermfg=75      ctermbg=NONE    cterm=NONE      guifg=#5FAFFF       guibg=NONE      gui=NONE
hi cssNoise             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssProp              ctermfg=152     ctermbg=NONE    cterm=NONE      guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssPseudoClass       ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssPseudoClassId     ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssTagName           ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi cssUIAttr            ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssUnitDecorators    ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssURL               ctermfg=255     ctermbg=NONE    cterm=italic    guifg=#EEEEEE       guibg=NONE      gui=italic
hi cssValueLength       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssValueNumber       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi htmlArg              ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE " HTML/HTML5
hi htmlEndTag           ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlSpecialChar      ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi htmlSpecialTagName   ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi htmlTag              ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlTagName          ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi javaScriptBoolean    ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " JavaScript
hi javaScriptBraces     ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi javaScriptConditional ctermfg=140    ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptException  ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptFunction   ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=italic
hi javaScriptGlobal     ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptIdentifier ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptLabel      ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptMessage    ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptNull       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptNumber     ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptOperator   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptParens     ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRegexpString ctermfg=117   ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRepeat     ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptSpecial    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptStatement  ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCode         ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE " Markdown
hi markdownCodeBlock    ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCodeDelimiter ctermfg=247    ctermbg=NONE    cterm=NONE      guifg=#9E9E9E       guibg=NONE      gui=NONE
hi markdownError        ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi markdownHeadingDelimiter ctermfg=150 ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi markdownUrl          ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi phpBoolean           ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " PHP
hi phpClass             ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpClassDelimiter    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpClassExtends      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpClassImplements   ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpCommentStar       ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#444444       guibg=NONE      gui=NONE
hi phpCommentTitle      ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#444444       guibg=NONE      gui=NONE
hi phpDocComment        ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#444444       guibg=NONE      gui=NONE
hi phpDocIdentifier     ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#444444       guibg=NONE      gui=NONE
hi phpDocParam          ctermfg=238     ctermbg=NONE    cterm=NONE      guifg=#444444       guibg=NONE      gui=NONE
hi phpDocTags           ctermfg=242     ctermbg=NONE    cterm=NONE      guifg=#666666       guibg=NONE      gui=NONE
hi phpFunction          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpFunctions         ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpIdentifier        ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpInclude           ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpKeyword           ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpMethod            ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpNumber            ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi phpOperator          ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpParent            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMemberSelector    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMethodsVar        ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpStaticClasses     ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpStringDouble      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpStringDelimiter   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpStringSingle      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpSuperglobals      ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpType              ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpUseClass          ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpVarSelector       ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi pythonConditional    ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE " Python
hi pythonDecorator      ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonException      ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonFunction       ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi pythonInclude        ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonNumber         ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi pythonOperator       ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonRepeat         ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonStatement      ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonTodo           ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyBlockParameter   ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " Ruby
hi rubyClass            ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi rubyClassVariable    ctermfg=224     ctermbg=NONE    cterm=NONE      guifg=#FFDEC7       guibg=NONE      gui=NONE
hi rubyConstant         ctermfg=166     ctermbg=NONE    cterm=italic    guifg=#D9601A       guibg=NONE      gui=italic
hi rubyControl          ctermfg=229     ctermbg=NONE    cterm=NONE      guifg=#FFE587       guibg=NONE      gui=NONE
hi rubyException        ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyFunction         ctermfg=245     ctermbg=NONE    cterm=NONE      guifg=#8C8C8C       guibg=NONE      gui=NONE
hi rubyInclude          ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyInstanceVariable ctermfg=138     ctermbg=NONE    cterm=NONE      guifg=#B17A9B       guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter ctermfg=117 ctermbg=NONE  cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyOperator         ctermfg=22      ctermbg=NONE    cterm=NONE      guifg=#134e13       guibg=NONE      gui=NONE
hi rubyPseudoVariable   ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi rubyRegexp           ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyRegexpDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyStringDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubySymbol           ctermfg=146     ctermbg=NONE    cterm=NONE      guifg=#A9C2D9       guibg=NONE      gui=NONE
hi elixirDelimiter      ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE " Elixir
hi elixirBlockDefinition ctermfg=166    ctermbg=NONE    cterm=NONE      guifg=#D9601A       guibg=NONE      gui=NONE
hi elixirBoolean        ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirDefine         ctermfg=166     ctermbg=NONE    cterm=NONE      guifg=#D9601A       guibg=NONE      gui=NONE
hi elixirDocTest        ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirExUnitAssert   ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirExUnitMacro    ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirKernelFunction ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirKeyword        ctermfg=146     ctermbg=NONE    cterm=NONE      guifg=#A9C2D9       guibg=NONE      gui=NONE
hi elixirModuleDefine   ctermfg=166     ctermbg=NONE    cterm=NONE      guifg=#D9601A       guibg=NONE      gui=NONE
hi elixirPrivateDefine  ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi elixirStringDelimiter ctermfg=117    ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi elixirVariable       ctermfg=138     ctermbg=NONE    cterm=NONE      guifg=#B17A9B       guibg=NONE      gui=NONE
hi elixirAlias          ctermfg=138     ctermbg=NONE    cterm=NONE      guifg=#B17A9B       guibg=NONE      gui=NONE
hi elixirAtom           ctermfg=146     ctermbg=NONE    cterm=NONE      guifg=#A9C2D9       guibg=NONE      gui=NONE
hi elixirUnusedVariable ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirInclude        ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi elixirFunctionDeclaration ctermfg=245 ctermbg=NONE   cterm=NONE      guifg=#8C8C8C       guibg=NONE      gui=NONE
hi elixirStructDefine   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi elixirProtocolDefine ctermfg=166     ctermbg=NONE    cterm=NONE      guifg=#D9601A       guibg=NONE      gui=NONE
hi elixirImplDefine     ctermfg=166     ctermbg=NONE    cterm=NONE      guifg=#D9601A       guibg=NONE      gui=NONE
hi elixirModuleDeclaration ctermfg=173  ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi elixirDocString      ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi sassClass            ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE " Sass
hi sassClassChar        ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi sassFunction         ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi sassInclude          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi sassVariable         ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi shFunction           ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE " Shell
hi shOperator           ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi shStatement          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi shTestOpr            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi shVariable           ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi xmlAttrib            ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE " XML
hi xmlEndTag            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlEqual             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTag               ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTagName           ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
