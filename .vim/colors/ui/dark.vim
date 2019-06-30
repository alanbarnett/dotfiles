" dark.vim
" Alan Barnett
" Last edit: 6/30 2019

" Sets a dark background, and sets nice gray colors for various bars and lines.
" Makes the error message bright red. Also sets fg colors for fold text and
" column, whitespace and nontext for list mode, as well as concealed and end of
" buffer text.

" Cursor and non-cursor window have different light and dark grey backgrounds
highlight Normal ctermbg=233 ctermfg=7
highlight NormalNC ctermbg=232

" End of buffer with slightly lighter background and light blue ~'s
highlight EndOfBuffer ctermbg=234 ctermfg=24
" Line number with lighter gray text
highlight LineNr ctermbg=234 ctermfg=240
" Folded text and fold column, pretty blue foreground
highlight Folded ctermbg=234 ctermfg=80
highlight FoldColumn ctermfg=80
" Same color for color column
highlight ColorColumn ctermbg=234

" Cursor line number same background as the line and column, step lighter gray
highlight CursorLineNr ctermbg=236 ctermfg=13
highlight CursorLine ctermbg=236 cterm=none
highlight CursorColumn ctermbg=236

" Visual mode, step lighter gray again
highlight Visual ctermbg=238

" Whitespace coloring for listchars, set to lightish gray
highlight Whitespace ctermfg=238
" Non-text coloring for listchars, applies to word wrap & eol characters
highlight NonText ctermfg=12

" Ignored (concealed) characters colored lighter gray
highlight Ignore ctermfg=240

" Make error messages easier to read
highlight ErrorMsg ctermbg=160 ctermfg=250
highlight! link Error ErrorMsg
