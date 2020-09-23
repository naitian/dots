" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')
scriptencoding utf-8

" Start with the Basic
set number                      " line numbers
set mouse=a                     " mouse mode
set relativenumber              " relative line numbers are swaggy

" Indenting
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Comfort
set scrolloff=3                 " Show next 3 lines while scrolling.
set ignorecase
set smartcase
set gdefault                    " Default to global
set modeline                    " Allow modelines
set modelines=1

set foldmethod=indent           " Default to indent folding

set clipboard=unnamedplus

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'jiangmiao/auto-pairs'     " Complete pairs
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'benizi/vim-automkdir'     " Automatically create parent dirs on write
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-obsession'      " For saving vim sessions
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ludovicchabant/vim-gutentags'

Plug 'w0rp/ale'                 " Linting
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Completion
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'ervandew/supertab'        " Tab
Plug 'SirVer/ultisnips', { 'on': [] }   " Snippets
Plug 'honza/vim-snippets'

Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language specific
Plug 'tpope/vim-markdown'
" Plug 'davidhalter/jedi-vim'     " Python smart completion
" Plug 'zchee/deoplete-jedi'      " Deoplete Jedi integration
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'xuhdev/vim-latex-live-preview', {'for': ['tex']}
Plug 'lervag/vimtex', {'for': ['tex']}
Plug 'fatih/vim-go', {'for': ['go']}
Plug 'posva/vim-vue'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mustache/vim-mustache-handlebars'

Plug 'vimwiki/vimwiki'

call plug#end()

" Source my own files
" source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/autocmds.vim

" Aesthetics
set termguicolors
set background=dark
colorscheme witty

set fillchars=vert:│
set listchars=tab:--
set listchars+=trail:·
set list

" Linting
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
            \   'python': ['flake8'],
            \   'javascript': ['eslint']
            \}

" Supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" Completion
" Lazy load deoplete: see autocmds.vim
" let g:deoplete#enable_at_startup = 0
" " vimtex omnicompletion: https://github.com/lervag/vimtex/issues/453
" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif
" let g:deoplete#omni#input_patterns.tex =
"             \   '\\(?:'
"             \  .   '\w*cite\w*(?:\s*\[[^]]*\]){0,2}\s*{[^}]*'
"             \  .  '|\w*ref(?:\s*\{[^}]*|range\s*\{[^,}]*(?:}{)?)'
"             \  .  '|hyperref\s*\[[^]]*'
"             \  .  '|includegraphics\*?(?:\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"             \  .  '|(?:include(?:only)?|input)\s*\{[^}]*'
"             \  .')'

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" Airline
let g:airline_theme = 'minimalist'

" vim-markdown
let g:markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'py=python', 'js=javascript']

" LaTeX
" let g:livepreview_previewer = 'open -a Preview'
" let g:livepreview_engine = 'pdflatex'
let g:tex_flavor = "latex"
let g:vimtex_complete_bib = { 'simple': 1, 'recursive': 1, 'menu_fmt': '[@type] @author_short (@year), "@title"', 'abbr_fmt': '' }
let g:vimtex_view_method = "skim"
let g:vimtex_latexmk_enabled = 1

let @b = "yae%o\\ &=\<CR>    \<ESC>p:w\<CR>j"

" Jedi
let g:jedi#usages_command = ';n'
let g:jedi#rename_command = ';r'

" vimwiki
let g:wiki = {}
let g:wiki.path = '~/Documents/School/CS/Projects/wiki/'
let g:wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [g:wiki]
let g:vimwiki_folding = 'syntax'

" Keybindings
let g:mapleader = ' '

" Previous buffer
nnoremap <leader><leader> <C-^>
" FZF Files
nnoremap <leader>p :Files<cr>
" FZF Buffers
nnoremap <leader>i :Buffers<cr>

nnoremap <leader>n :noh<cr>

" Quick source init.vim
nnoremap <leader>r :source ~/.config/nvim/init.vim<cr>
" Find highlight group
nnoremap <leader>h :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists('*synstack')
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" PrettyPrint JSON
command! PPJson %!python -m json.tool

" Use ripgrep for grep
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python2'

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
