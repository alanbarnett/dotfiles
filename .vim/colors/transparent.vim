" transparent.vim
" Alan Barnett
" Last edit: 6/30 2019

" Reset all highlights to their default
highlight clear
set background=dark
if exists("syntax_on")
	syntax reset
endif

" Set colors name variable, so it can be used in scripts
let g:colors_name = "transparent"

" Transparent background ui
runtime colors/ui/transparent.vim
" Add in statusline and tabline layer
runtime colors/bars/darkgreen.vim

" Match parenthesis with bright red color and underline
highlight MatchParen ctermbg=none ctermfg=168 cterm=underline

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
