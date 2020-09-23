augroup NaitianAutocmds
    autocmd!
    " Use marker for folding in any vim config file
    " No more pesky methodlines!
    autocmd FileType vim setlocal foldmethod=marker
    " autocmd InsertEnter * call deoplete#enable()
    autocmd InsertEnter * call plug#load('ultisnips')
augroup END
