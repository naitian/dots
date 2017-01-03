syntax on
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set backupskip=/tmp/*,/private/tmp/*
set smartindent
set nocompatible              " be iMproved, required
set cursorline
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set wildmenu
set path+=**
set t_ut=
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sirver/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'othree/html5.vim'
Plugin 'isruslan/vim-es6'
Plugin 'tomtom/tcomment_vim'
Plugin 'tyru/open-browser.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'PProvost/vim-markdown-jekyll'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'ctrlpvim/ctrlp.vim'
" YCM-UltiSnip-SuperTab:
" ------------------------------
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger= "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>" " you can use <c-j>
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" YCM
" ------
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" Material Theme
set background=dark
colorscheme hybrid_material

" Light Background for Markdown
autocmd BufEnter * colorscheme hybrid_material
autocmd BufEnter * set background=dark
autocmd BufEnter *.md set background=light

" Airline + Material
let g:airline_theme = "hybridalt"

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

let g:syntastic_html_tidy_ignore_errors=["<a-", "discarding unexpected </a-", " proprietary attribute \"a-"]

" CtrlP Config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

call vundle#end()            " required
filetype plugin indent on    " required

