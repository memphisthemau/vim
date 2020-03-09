function! InitSyntax()
    syntax on
    colo koehler
    set hlsearch

    hi LineNr ctermfg=DarkGray
    hi Comment ctermfg=DarkGray
endfunction

function! InitCursor()
    " Don't jump cursor around, instead stay in current column.
    set nostartofline
endfunction

function! InitTabs()
    " Soft tabs
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
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
    "set cursorline

    " Line numbers
    "set nonumber
    set number
endfunction

function! InitSearch()
    set nowrapscan
endfunction

"function! InitKeyMaps()
"    inoremap " ""<left>
"    inoremap ' ''<left>
"    inoremap ( ()<left>
"    inoremap [ []<left>
"    inoremap { {}<left>
"    inoremap < <lt>><left>
"endfunction

call InitSyntax()
call InitCursor()
call InitTabs()
call InitWin()
call InitSearch()
"call InitKeyMaps()
