" witty.vim - Vim color scheme
" Modified from the Hemisu color scheme
" ----------------------------------------------------------
" Name:       witty.vim
" Version:    0.0
" Maintainer: github.com/naitian
" License:    The MIT License (MIT)
" ----------------------------------------------------------

" Setup ----------------------------------------------------{{{
" Reset syntax highlighting
hi clear
if exists('syntax_on')
  syntax reset
endif

" Declare theme name
let g:colors_name = 'witty'

"}}}
" The Colors -----------------------------------------------{{{
" Define reusable colors
let s:bg          = { 'gui': '#2A2A2A', 'cterm': '0' }

if &background ==? 'dark'
    let s:normalWhite   = { 'gui': '#FFFFFF', 'cterm': '255' }  " #FFFFFF
    let s:fadedWhite    = { 'gui': '#EEFFFF', 'cterm': '255' }  " #EEFFFF
    let s:darkGray      = { 'gui': '#424242', 'cterm': '255' }  " #424242
    let s:fadedGray     = { 'gui': '#65737E', 'cterm': '255' }  " #65737E
    let s:normalBlack   = { 'gui': '#000000', 'cterm': '255' }  " #000000

    let s:normalYellow  = { 'gui': '#FFCB6B', 'cterm': '255' }  " #FFCB6B
    let s:brightYellow  = { 'gui': '#FFFD38', 'cterm': '255' }  " #FFFD38

    let s:normalBrown   = { 'gui': '#C17E70', 'cterm': '255' }  " #C17E70

    let s:normalGreen   = { 'gui': '#C3E88D', 'cterm': '255' }  " #C3E88D
    let s:fadedGreen    = { 'gui': '#B2CCD6', 'cterm': '255' }  " #B2CCD6

    let s:darkBlue      = { 'gui': '#6065FB', 'cterm': '255' }  " #6065FB
    let s:fadedBlue     = { 'gui': '#618AFC', 'cterm': '255' }  " #618AFC
    let s:normalBlue    = { 'gui': '#82AAFF', 'cterm': '255' }  " #82AAFF
    let s:brightBlue    = { 'gui': '#89DDFF', 'cterm': '255' }  " #89DDFF

    let s:brightRed     = { 'gui': '#F78C6C', 'cterm': '255' }  " #F78C6C
    let s:normalRed     = { 'gui': '#FF5370', 'cterm': '255' }  " #FF5370
    let s:fadedRed      = { 'gui': '#F07178', 'cterm': '255' }  " #F07178

    let s:normalPink    = { 'gui': '#C792EA', 'cterm': '255' }  " #C792EA


    let s:a = s:normalGreen
    let s:b = s:fadedGreen
    let s:c = s:fadedGray
    let s:d = s:normalYellow
    let s:e = s:normalBlue
    let s:f = s:brightRed
    let s:g = s:fadedWhite
    let s:h = s:fadedRed
    let s:i = s:normalRed
    let s:j = s:normalPink
    let s:k = s:normalBrown
    let s:l = s:brightBlue
    let s:m = s:normalWhite

    let s:accent = s:brightBlue
else

endif
" Assign to semantic categories based on background color
"  }}}
" Utility Function -----------------------------------------{{{
function! s:h(group, style)
  execute 'highlight' a:group
        \ 'guifg='   (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
        \ 'guibg='   (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
        \ 'guisp='   (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
        \ 'gui='     (has_key(a:style, 'gui')   ? a:style.gui      : 'NONE')
        \ 'ctermfg=' (has_key(a:style, 'fg')    ? a:style.fg.cterm : 'NONE')
        \ 'ctermbg=' (has_key(a:style, 'bg')    ? a:style.bg.cterm : 'NONE')
        \ 'cterm='   (has_key(a:style, 'cterm') ? a:style.cterm    : 'NONE')
endfunction

"}}}
" Highlights - Vim >= 7 ------------------------------------{{{
if v:version >= 700
  call s:h('CursorLine',  { 'bg': s:c })
  call s:h('MatchParen',  { 'fg': s:a, 'gui': 'bold' })
  call s:h('Pmenu',       { 'fg': s:normalBlack, 'bg': s:normalWhite })
  call s:h('PmenuThumb',  { 'bg': s:normalWhite })
  call s:h('PmenuSBar',   { 'bg': s:fadedGray })
  call s:h('PmenuSel',    { 'fg': s:normalBlack, 'bg': s:accent })
  call s:h('ColorColumn', { 'bg': s:g })
  call s:h('SpellBad',    { 'sp': s:i, 'gui': 'undercurl' })
  call s:h('SpellCap',    { 'sp': s:j, 'gui': 'undercurl' })
  call s:h('SpellRare',   { 'sp': s:j, 'gui': 'undercurl' })
  call s:h('SpellLocal',  { 'sp': s:j, 'gui': 'undercurl' })
  hi! link CursorColumn	CursorLine

  " Use background for cterm Spell*, which does not support undercurl
  execute 'hi! SpellBad   ctermbg=' s:i.cterm
  execute 'hi! SpellCap   ctermbg=' s:j.cterm
  execute 'hi! SpellRare  ctermbg=' s:j.cterm
  execute 'hi! SpellLocal ctermbg=' s:j.cterm
endif

"}}}
" Highlights - UI ------------------------------------------{{{
call s:h('Normal',       { 'fg': s:fadedWhite, 'bg': s:bg })
call s:h('LineNr',       { 'fg': s:fadedGray })
call s:h('Visual',       { 'bg': s:fadedGray })
call s:h('IncSearch',    { 'fg': s:normalBlack, 'bg': s:brightYellow})
call s:h('Search',       { 'fg': s:normalBlack, 'bg': s:normalYellow })
call s:h('StatusLine',   { 'fg': s:g, 'bg': s:fadedBlue })
call s:h('StatusLineNC', { 'fg': s:fadedGray, 'bg': s:darkGray })
call s:h('SignColumn',   { 'fg': s:fadedWhite })
call s:h('VertSplit',    { 'fg': s:fadedGray, 'bg': s:bg })
call s:h('TabLineSel',   { 'bg': s:darkGray, 'gui': 'bold', 'cterm': 'bold' })
call s:h('Folded',       { 'fg': s:fadedGray })
call s:h('Directory',    { 'fg': s:a })
call s:h('Title',        { 'fg': s:fadedGray, 'gui': 'bold', 'cterm': 'bold' })
call s:h('ErrorMsg',     { 'bg': s:fadedRed })
call s:h('DiffAdd',      { 'bg': s:normalGreen })
call s:h('DiffChange',   { 'bg': s:fadedRed })
call s:h('DiffDelete',   { 'fg': s:normalRed, 'bg': s:fadedRed })
call s:h('DiffText',     { 'bg': s:fadedRed, 'gui': 'bold', 'cterm': 'bold' })
call s:h('NonText',      { 'fg': s:fadedWhite })
call s:h('Bold',         { 'gui': 'bold', 'cterm': 'bold' })
call s:h('Italic',       { 'gui': 'italic', 'cterm': 'italic' })
hi! link WildMenu     IncSearch
hi! link FoldColumn   SignColumn
hi! link WarningMsg   ErrorMsg
hi! link MoreMsg      Title
hi! link Question     MoreMsg
hi! link ModeMsg      MoreMsg
hi! link TabLineFill  StatusLineNC
hi! link TabLine      StatusLineNC
hi! link SpecialKey   NonText

"}}}
" Highlights - Generic Syntax ------------------------------{{{
call s:h('Delimiter',  { 'fg': s:fadedGray })
call s:h('Comment',    { 'fg': s:fadedGray, 'gui': 'italic' })
call s:h('Underlined', { 'fg': s:brightBlue, 'gui': 'underline', 'cterm': 'underline' })
call s:h('Type',       { 'fg': s:d })
call s:h('String',     { 'fg': s:a })
call s:h('Keyword',    { 'fg': s:a, 'gui': 'bold', 'cterm': 'bold' })
call s:h('Todo',       { 'fg': s:brightYellow, 'gui': 'bold', 'cterm': 'bold' })
call s:h('Function',   { 'gui': 'bold', 'cterm': 'bold' })
hi! link Identifier  Function
hi! link Statement   Type
hi! link Constant    Directory
hi! link Number      Constant
hi! link Special     Constant
hi! link PreProc     Constant
hi! link Error       ErrorMsg

"}}}
" Highlights - HTML ----------------------------------------{{{
hi! link htmlLink    Underlined
hi! link htmlTag     Type
hi! link htmlEndTag  htmlTag

"}}}
" Highlights - CSS -----------------------------------------{{{
hi! link cssBraces      Delimiter
hi! link cssSelectorOp  cssBraces
hi! link cssClassName   Normal

"}}}
" Highlights - Markdown ------------------------------------{{{
call s:h('markdownH1',   { 'gui': 'bold' })
hi!  link  mkdListItem          mkdDelimiter
hi!  link  markdownBold         Bold
hi!  link  markdownItalic       Italic
"}}}
" Highlights - Shell ---------------------------------------{{{
hi! link shOperator  Delimiter
hi! link shCaseBar   Delimiter

"}}}
" Highlights - JavaScript ----------------------------------{{{
hi! link javaScriptValue   Constant
hi! link javaScriptNull    Constant
hi! link javaScriptBraces  Normal

"}}}
" Highlights - ALE Linter ----------------------------------{{{
call s:h('ALEErrorSign',   { 'fg': s:fadedRed, 'gui': 'bold' })
call s:h('ALEWarningSign', { 'fg': s:brightYellow, 'gui': 'bold' })
" }}}
" Highlights - Help ----------------------------------------{{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" Highlights - Statusline ----------------------------------{{{
call s:h('User1', { 'fg': s:g, 'bg': s:darkBlue, 'gui': 'bold', 'cterm': 'bold' })
" }}}
