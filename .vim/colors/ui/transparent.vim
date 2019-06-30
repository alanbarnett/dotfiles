" transparent.vim
" Alan Barnett
" Last edit: 6/30 2019

" Sets a transparent background, and sets nice gray colors for various bars and
" lines. Makes the error message bright red. Also sets fg colors for fold text
" and column, whitespace and nontext for list mode, as well as concealed and
" end of buffer text.

" Normal text set to the normal gray color
highlight Normal ctermbg=none ctermfg=7

" Line number and cursor line number fg colors used from system
highlight LineNr ctermbg=none ctermfg=11
highlight CursorLineNr ctermbg=none ctermfg=13

" Folded text and column fg color set to pretty light blue
highlight Folded ctermbg=none ctermfg=80
highlight FoldColumn ctermbg=none ctermfg=80

" Cursor line and column set to darkish gray
highlight CursorLine ctermbg=237 cterm=none
highlight CursorColumn ctermbg=237

" Colorcolumn and visual set to slightly lighter gray
highlight ColorColumn ctermbg=238
highlight Visual ctermbg=238

" Whitespace coloring for listchars, set to light gray
highlight Whitespace ctermbg=none ctermfg=240
" Ignored (concealed) characters linked to whitespace
highlight! link Ignore Whitespace
" Non-text coloring for listchars, applies to word wrap & eol characters
highlight NonText ctermbg=none ctermfg=12
" EndOfBuffer linked to NonText
highlight! link EndOfBuffer NonText

" Make error messages easier to read
highlight ErrorMsg ctermbg=160 ctermfg=250
highlight! link Error ErrorMsg
