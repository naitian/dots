hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'quip'

if &background ==? 'dark'
    set background=dark

hi  Normal                ctermfg=231   ctermbg=NONE  cterm=NONE       guifg=#D0D0D0  guibg=NONE     gui=NONE
hi  Comment               ctermfg=059   ctermbg=NONE  cterm=italic     guifg=#4A4A4A  guibg=NONE     gui=italic
hi  Variable              ctermfg=231   ctermbg=NONE  cterm=NONE       guifg=#EEFFFF  guibg=NONE     gui=NONE
hi  SpellBad              ctermfg=NONE  ctermbg=NONE  cterm=underline  guifg=NONE     guibg=NONE     gui=underline
hi  SpellCap              ctermfg=NONE  ctermbg=NONE  cterm=underline  guifg=NONE     guibg=NONE     gui=underline
hi  Operator              ctermfg=117   ctermbg=NONE  cterm=NONE       guifg=#89DDFF  guibg=NONE     gui=NONE
hi  Tag                   ctermfg=204   ctermbg=NONE  cterm=NONE       guifg=#F07178  guibg=NONE     gui=NONE
hi  Function              ctermfg=111   ctermbg=NONE  cterm=NONE       guifg=#82AAFF  guibg=NONE     gui=NONE
hi  Constant              ctermfg=209   ctermbg=NONE  cterm=NONE       guifg=#F78C6C  guibg=NONE     gui=NONE
hi  DiffAdd               ctermfg=186   ctermbg=NONE  cterm=NONE       guifg=#C3E88D  guibg=NONE     gui=NONE
hi  DiffDelete            ctermfg=203   ctermbg=NONE  cterm=NONE       guifg=#F07178  Guibg=NONE     gui=NONE
hi  DiffChange            ctermfg=176   ctermbg=NONE  cterm=NONE       guifg=#FFCB6B  guibg=NONE     gui=NONE
hi  String                ctermfg=186   ctermbg=NONE  cterm=NONE       guifg=#C3E88D  guibg=NONE     gui=NONE
hi  LineNr                ctermfg=059   ctermbg=NONE  cterm=NONE       guifg=#5F5F5F  guibg=NONE     gui=NONE
hi  CursorLine            ctermfg=NONE  ctermbg=239   cterm=NONE       guifg=NONE     guibg=#4E4E4E  gui=NONE
hi  CursorLineNr          ctermfg=226   ctermbg=239   cterm=NONE       guifg=#FFFF00  guibg=#4E4E4E  gui=NONE
hi  Tooltip               ctermfg=231   ctermbg=059   cterm=NONE       guifg=#FFFFFF  guibg=#5F5F5F  gui=NONE
hi  SignColumn            ctermfg=NONE  ctermbg=NONE  cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE
hi  Vertsplit             ctermfg=059   ctermbg=NONE  cterm=NONE       guifg=#5F5F5F  guibg=NONE     gui=NONE
hi  Directory             ctermfg=226   ctermbg=NONE  cterm=bold       guifg=#FFFF00  guibg=NONE     gui=bold
hi  NonText               ctermfg=235   ctermbg=NONE  cterm=NONE       guifg=#262626  guibg=NONE     gui=NONE
hi  Pmenu                 ctermfg=016   ctermbg=015   cterm=NONE       guifg=#000000  guibg=#FFFFFF  gui=NONE
hi  Pmenusel              ctermfg=016   ctermbg=249   cterm=bold       guifg=#000000  guibg=#B2B2B2  gui=bold
hi  WildMenu              ctermfg=015   ctermbg=NONE  cterm=bold       guifg=#FFFFFF  guibg=NONE     gui=bold
endif

syntax enable
