function! InitSyntax()
    syntax on
    colo koehler
    set hlsearch
endfunction

function! InitCursor()
    " Don't jump cursor around, instead stay in current column.
    set nostartofline
endfunction

function! InitTabs()
    " Soft tabs
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    " Let the cursor stray beyond the defined text.
    set virtualedit=all
endfunction

function! InitWin()
    " Draw vertical line
    set colorcolumn=80

    " :help ctermbg
    hi colorcolumn ctermbg=4

    " Horizontal cursor line
    set cursorline

    " Line numbers
    set number
endfunction

function! InitSearch()
    set nowrapscan
endfunction

call InitSyntax()
call InitCursor()
call InitTabs()
call InitWin()
call InitSearch()
