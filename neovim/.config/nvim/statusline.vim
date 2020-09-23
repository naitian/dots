scriptencoding utf-8

" Setup ------------------------------------------------{{{
" Always display statusline
set laststatus=2
" Reset statusline
set statusline=


" }}}
" Active statusline ------------------------------------{{{
if exists('g:loaded_fugitive') && fugitive#head() !=? ''
    " Only add Git branch if there exists a Git branch
    set statusline+=%1*
    set statusline+=\ ᚠ\ %{fugitive#head()}     " Git branch
    set statusline+=\ %*
endif

set statusline+=\ %f                            " File path
set statusline+=\ %m                            " Modified
set statusline+=\ %h%w%q                        " Special buffer types

set statusline+=%=                              " Hello. From the other side

set statusline+=☰\ %4l/%-4L                     " Line numbers e.g.: 20/22
set statusline+=%3v                             " Virtual column number
set statusline+=\                               " Space
set statusline+=%##
set statusline+=%{LinterStatus()}               " Linter Status
set statusline+=\                               " Space
" }}}
" Blurred statusline -----------------------------------{{{

" }}}
" Linter Functions -------------------------------------{{{
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   l:all_non_errors,
    \   l:all_errors
    \)
endfunction
" }}}
