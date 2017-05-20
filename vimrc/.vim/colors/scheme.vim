hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "scheme"

" Define color variables
let s:bg_dark  =  {'cterm':  'NONE'}
let s:white    =  {'cterm':  253}
let s:black    =  {'cterm':  235}
let s:gray1    =  {'cterm':  059}
let s:accent   =  {'cterm':  226}


if &background == "dark"
    set background=dark
    hi  Normal                ctermfg=231   ctermbg=NONE  cterm=NONE
    hi  Comment               ctermfg=059   ctermbg=NONE  cterm=italic
    hi  Variable              ctermfg=231   ctermbg=NONE  cterm=NONE
    hi  SpellBad              ctermfg=NONE  ctermbg=NONE  cterm=underline
    hi  SpellCap              ctermfg=NONE  ctermbg=NONE  cterm=underline
    hi  Operator              ctermfg=117   ctermbg=NONE  cterm=NONE
    hi  Tag                   ctermfg=204   ctermbg=NONE  cterm=NONE
    hi  Function              ctermfg=111   ctermbg=NONE  cterm=NONE
    hi  Constant              ctermfg=209   ctermbg=NONE  cterm=NONE
    hi  DiffAdd               ctermfg=186   ctermbg=NONE  cterm=NONE
    hi  DiffDelete            ctermfg=203   ctermbg=NONE  cterm=NONE
    hi  DiffChange            ctermfg=176   ctermbg=NONE  cterm=NONE
    hi  String                ctermfg=186   ctermbg=NONE  cterm=NONE
    hi  LineNr                ctermfg=059   ctermbg=NONE  cterm=NONE
    hi  CursorLine            ctermfg=NONE  ctermbg=NONE  cterm=NONE
    hi  CursorLineNr          ctermfg=226   ctermbg=239   cterm=NONE
    hi  Tooltip               ctermfg=231   ctermbg=059   cterm=NONE
    hi  SignColumn            ctermfg=NONE  ctermbg=NONE  cterm=NONE
    hi  Vertsplit             ctermfg=059   ctermbg=NONE  cterm=NONE
    hi  Directory             ctermfg=226   ctermbg=NONE  cterm=bold
    hi  NonText               ctermfg=235   ctermbg=NONE  cterm=NONE
    hi  Pmenu                 ctermfg=016   ctermbg=015   cterm=NONE
    hi  Pmenusel              ctermfg=016   ctermbg=249   cterm=bold
    hi  Statusline            ctermfg=015   ctermbg=NONE  cterm=NONE
    hi  WildMenu              ctermfg=015   ctermbg=NONE  cterm=bold
    hi  SyntasticErrorLine    ctermfg=203   ctermbg=NONE  cterm=NONE
    hi  SyntasticWarningLine  ctermfg=221   ctermbg=NONE  cterm=NONE
else
    set background=light
    hi  Normal        ctermfg=232   ctermbg=231  cterm=NONE
endif

syntax enable
