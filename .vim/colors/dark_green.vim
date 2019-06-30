" dark_green.vim
" Alan Barnett
" Last edit: 6/30 2019

" Reset all highlights to their default
highlight clear
set background=dark
if exists("syntax_on")
	syntax reset
endif

" Set colors name variable, so it can be used in scripts
let g:colors_name = "dark_green"

" Dark background ui
runtime colors/ui/dark.vim
" Add in status and tab line layer
runtime colors/bars/darkgreen.vim

" Match parenthesis with bright red color and underline
highlight MatchParen ctermbg=none ctermfg=210 cterm=underline

" Other things I might want to color:
" highlight ModeMsg
" highlight WildMenu
" highlight Search
" highlight Pmenu
" highlight PmenuSel
" highlight PmenuSbar
" highlight PmenuThumb
" highlight MatchParen
" highlight Substitute
" highlight Incsearch
