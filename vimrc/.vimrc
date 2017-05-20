" Set Fold Method to Marker -----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}

" Some Options -----{{{
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
set ttimeoutlen=25
set t_ut=
set t_Co=256
set clipboard=unnamed
set backspace=2
filetype off                  " required
" }}}

" netrw settings {{{
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
" }}}

" set the runtime path to include Vundle and initialize {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"}}}

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins {{{
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
Plugin 'othree/html5.vim'
Plugin 'ap/vim-css-color'
Plugin 'isruslan/vim-es6'
Plugin 'tomtom/tcomment_vim'
Plugin 'tyru/open-browser.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'PProvost/vim-markdown-jekyll'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-vinegar'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'tpope/vim-obsession'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-scripts/textutil.vim'
"}}}

" ================== "
"   MAPS & SCRIPTS   "
" ================== "
" Keybindings {{{
" Show syntax highlighting groups for word under cursor

let mapleader = " "

" Quick reload vimrc
nnoremap <leader>r <esc>:source ~/.vimrc<CR>

" CtrlP
nnoremap <leader>i <esc>:CtrlPBuffer<CR>

" Show highlight groups
nnoremap <leader>h :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
"}}}

" ================== "
"       COLORS       "
" ================== "
"Colors {{{
" Color Scheme {{{
set background=dark
colorscheme scheme
"}}}

" Special {{{
" Light Background for Markdown
autocmd BufEnter * colorscheme scheme
autocmd BufEnter * set background=dark
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" autocmd BufEnter *.md set background=light
"}}}

" Airline {{{
let g:airline_theme = "scheme"
"}}}
"}}}

" ================== "
" PLUGIN PREFERENCES "
" ================== "
" Plugin Preferences {{{

" YCM-UltiSnip-SuperTab: {{{
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_server_python_interpreter = '/Users/naitian/anaconda3/bin/python'
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger= "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>" " you can use <c-j>
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" YCM
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" }}}

" Airline {{{
let g:airline#extensions#tabline#enabled = 0
set laststatus=2
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

let g:syntastic_html_tidy_ignore_errors=["<a-", "discarding unexpected </a-", " proprietary attribute \"a-"]
"}}}

" CtrlP Config {{{
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"}}}

" vim-jsx {{{
let g:jsx_ext_required = 0
"}}}

" NERDTree {{{
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" }}}

call vundle#end()            " required
filetype plugin indent on    " required

