function! InitSyntax()
    syntax on
    
    " Copy the contents of autoload/ and colors/ into their
    " respective directories under ~/.vim/.
    "  ${git}/autoload/onedark.vim -> ~/.vim/autoload/onedark.vim
    "  ${git}/colors/onedark.vim -> ~/.vim/colors/onedark.vim
    colo onedark
    
    set hlsearch

    "hi LineNr term=None cterm=None ctermfg=DarkGray
    "hi Comment term=None cterm=None ctermfg=DarkGray
    "hi Search term=None cterm=None ctermfg=Black ctermbg=LightMagenta
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
    "hi colorcolumn ctermbg=4

    " Horizontal cursor line
    "set cursorline

    " Line numbers
    "set nonumber
    set number
endfunction

function! InitSearch()
    set nowrapscan
endfunction

function! InitSpecialChars()
    set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
    set list
endfunction


call InitSyntax()
call InitCursor()
call InitTabs()
call InitWin()
call InitSearch()
call InitSpecialChars()
