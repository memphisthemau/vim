" Vim syntax file

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "btx"

" Comments

syntax match BbgComment1 '#.*$'       " From hash until EOL
syntax match BbgComment2 '^-\{1,}'    " At least 1 dash at beginning of line
syntax match BbgComment3 '<\{3,}.*$'  " At least 3 braces until EOL

highlight link BbgComment1 Comment
highlight link BbgComment2 Comment
highlight link BbgComment3 Comment

" Keywords
syntax case ignore
syntax keyword BbgTicketKeywords com comq disp drqs gchg idocs sor ord schd sdsk treq ptsk nextgroup=TicketNumber skipwhite

syntax keyword BbgFunctionKeywords apdi cpua fons gp ltpc prqs rhst team bwiki afns wctr bams brd ntwk nms exc zor zre zrx wsch pout cust swdr nextgroup=TicketNumber skipwhite

syntax case match
syntax match TicketNumber '\d\+' contained

highlight link BbgTicketKeywords Keyword
highlight link BbgFunctionKeywords Keyword
highlight link TicketNumber Keyword

" Hyperlinks
"syntax match Hyperlinks 'http(s)\?:.*$'
"highlight link Hyperlinks Keyword
syntax match Hyperlinks /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
highlight link Hyperlinks Underlined
