" Set Fold Method to Marker -----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}

" Some Options -----{{{
syntax on
set number " Line numbers"
set mouse=a " Mouse mode"

" 4-space tabs
set tabstop=4
set shiftwidth=4
set expandtab

set backupskip=/tmp/*,/private/tmp/*

set smartindent

set nocompatible              " be iMproved, required

set cursorline

" Folding
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
set incsearch

set scrolloff=3

set fillchars=vert:┃

set shortmess+=c

set listchars=
set listchars+=tab:--
set listchars+=trail:·
set list

" }}}

" statusline {{{

" let g:currentmode={
"     \ 'n'  : 'N ',
"     \ 'no' : 'N·Operator Pending ',
"     \ 'v'  : 'V ',
"     \ 'V'  : 'V·Line ',
"     \ '\<C-V>' : 'V·Block ',
"     \ 's'  : 'Select ',
"     \ 'S'  : 'S·Line ',
"     \ '\<C-S>' : 'S·Block ',
"     \ 'i'  : 'I ',
"     \ 'R'  : 'R ',
"     \ 'Rv' : 'V·Replace ',
"     \ 'c'  : 'Command ',
"     \ 'cv' : 'Vim Ex ',
"     \ 'ce' : 'Ex ',
"     \ 'r'  : 'Prompt ',
"     \ 'rm' : 'More ',
"     \ 'r?' : 'Confirm ',
"     \ '!'  : 'Shell ',
"     \ 't'  : 'Terminal '
" \}
" set laststatus=2
" if (mode() =~# '\v(n|no)')
"     set statusline=%#User1#
" elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block')
"     set statusline=%$#User2#
" elseif (mode() ==# 'i')
"     set statusline=%#User3#
" else
"     set statusline=%#User4#
" endif
"
" set statusline+=\ %2{g:modenames[mode()]}
" }}}

" netrw settings {{{
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
" }}}

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')


" Plugins {{{
Plug 'Valloric/YouCompleteMe', {'on': []}
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips', {'on': []}
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': ['markdown', 'md']}
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript', {'for': ['javascript']}
Plug 'othree/html5.vim', {'for': ['css', 'html']}
Plug 'ap/vim-css-color', {'for': ['css', 'html', 'scss']}
Plug 'isruslan/vim-es6', {'for': 'javascript'}
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/goyo.vim', {'for': 'markdown'}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'html', 'scss']}
" Plug 'PProvost/vim-markdown-jekyll', {'for': ['markdown', 'md']}
" Plug 'maksimr/vim-jsbeautify'
Plug 'ctrlpvim/ctrlp.vim', {'on': ['CtrlP', 'CtrlPBuffer']}
Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'wincent/loupe'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sleuth'
" Plug 'sheerun/vim-polyglot'
"}}}

" ================== "
"   MAPS & SCRIPTS   j
" ================== "
" Keybindings {{{
" Show syntax highlighting groups for word under cursor

" Display images iwth imgcat
autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

let mapleader = " "

nnoremap <leader><leader> <C-^>
" Quick reload vimrc
nnoremap <leader>r <esc>:source ~/.vimrc<CR>

" Navigating windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" CtrlP
nnoremap <leader>i <esc>:CtrlPBuffer<CR>
nnoremap <leader>p <esc>:CtrlP<CR>

" Syntastic
nnoremap <leader>s <esc>:SyntasticToggle<CR>

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
" autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
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

" vim-markdown {{{
"
" }}}

" YCM-UltiSnip-SuperTab: {{{
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                     \| autocmd! load_us_ycm
augroup END
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
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" vimwiki {{{
let g:vimwiki_list = [{
                    \ 'path':'~/Documents/School/CS/Projects/wiki'
                    \ }]
" }}}
" }}}

call plug#end()            " required
