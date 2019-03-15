set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" set background=dark
" set hidden
" set scrolloff=5
" set nu
" set tabstop=4 shiftwidth=4
" set colorcolumn=81
" set splitbelow splitright
" set cursorline
" set wildmode=longest,full		" don't automatically complete a match
"
" inoremap jk <Esc>
" nnoremap \so :source %<CR>
" nnoremap \c I" <Esc>
" nnoremap \C ^2x
" nnoremap \r :set rnu!<CR>
" nnoremap <Space> za
" " Window navigation
" nnoremap <C-h> <C-w><C-h>
" nnoremap <C-j> <C-w><C-j>
" nnoremap <C-k> <C-w><C-k>
" nnoremap <C-l> <C-w><C-l>
"
" " Highlight group for extra spaces (set to green)
" highlight ExtraWhitespace ctermbg=darkgreen
"
" if $TERM == "linux"
" 	highlight Normal ctermfg=7 ctermbg=8
" 	highlight Visual ctermbg=magenta
" 	highlight LineNr ctermfg=darkred ctermbg=magenta
" 	highlight CursorLine ctermbg=red cterm=bold
" 	highlight CursorLineNr ctermfg=red ctermbg=darkred
" 	highlight Folded ctermbg=magenta
" 	highlight ColorColumn ctermbg=darkred
" endif
