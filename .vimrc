" General settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader='\'			" setting a leader key for custom key shortcuts

filetype plugin indent on	" filetype plugins, indentation, and detection
syntax on					" syntax highlighting
set background=dark			" forcing my terminal to have light colors

set number					" line numbering
set scrolloff=10			" space around the cursor when scrolling
set colorcolumn=80			" a big red column at column 80

set backspace=indent,eol,start	" more useful backspace behavior

set modeline				" interpret modelines in files
set modelines=1				" look at only one line at the top and bottom

set lazyredraw				" stop Vim from redrawing during macros
set splitbelow splitright	" sensible split directions

set hidden					" allow buffers to exist if they aren't visible

" Nice searching
set ignorecase				" ignore case while searching a file,
set smartcase				" unless capital letters are used in the pattern.
set incsearch				" move the cursor to the first match while typing
set hlsearch				" highlight all search matches
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Programming settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent				" keep same indent level on new lines
set smartindent				" smart indentation for C things

set showmatch				" briefly snap cursor to matching bracket

set tabstop=4				" tabs are size 4
set shiftwidth=4			" move lines by 4 when using >> and <<
set noexpandtab				" don't turn tabs into spaces

set grepprg=grep\ -nH\ $*	" grep alias to show line number and filename

" Good commenting behavior for norm-style C comments
set comments=s:/*,mb:**,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Statusbar settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2			" use statusbar on all windows

" Function to return a block for the statusline if the buffer is modified
function! Modif()
	if &modified
		return ' [+] '
	else
		return ''
	endif
endfunction

" Filename block
set statusline=%#st_filen#	" filename color
set statusline+=\ 			" space separator
set statusline+=%.30f		" show relative path to file, wrapped at 30 chars
set statusline+=\ 			" space separator

" Filetype block
set statusline+=%#st_filet#	" filetype color
set statusline+=\ 			" space separator
set statusline+=%y			" filetype
set statusline+=\ 			" space separator

" Modified block
set statusline+=%#st_modif#	" modified color
set statusline+=%{Modif()}	" function

set statusline+=%#st_norm#	" normal
set statusline+=%=			" separator (jump to other side of screen)

" Ascii block
set statusline+=%#st_ascii#	" ascii color
set statusline+=\ 			" space separator
set statusline+=%3b,		" ascii value of cursor char in decimal
set statusline+=%-2B		" ascii value of cursor char in hexadecimal
set statusline+=\ 			" space separator

" Column block
set statusline+=%#st_col#	" number color
set statusline+=\ 			" space separator
"				.-start group with width 5
"				|	.-cursor column (tabs count as one character)
"				|	| .-virtual column (tabs count as multiple characters)
"				|	| | .-end group
set statusline+=%-5(%c%V%)
set statusline+=\ 			" space separator

" Line number block
set statusline+=%#st_line#	" number color
set statusline+=\ 			" space separator
set statusline+=[%3l,%-3L]	" line number, total lines in file
set statusline+=\ 			" space separator

" Position block
set statusline+=%#st_filen#	" filename color
set statusline+=\ 			" space separator
set statusline+=[%P]		" percentage of file (top, bot, all, or percent)
set statusline+=\ 			" space separator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Folding settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=marker		" fold by markers
set foldmarker=/*,*/		" use /* and */ to fold C comments
"set foldcolumn=2			" show a column on the right with folds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Highlight groups {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defining Normal
highlight Normal ctermfg=250 ctermbg=none

" Highlight group for extra spaces (set to green)
highlight ExtraWhitespace ctermbg=darkgreen
call matchadd('ExtraWhitespace', '\s\+$\| \+\ze\t\|\t\zs \+')

" Highlight group for characters past column 80 (set to red)
highlight OverLength ctermbg=red ctermfg=white
call matchadd('OverLength', '\%81v.\+')

" Highlight groups for my statusline
highlight st_norm ctermfg=fg ctermbg=none cterm=reverse
highlight st_filen ctermfg=white ctermbg=darkmagenta
highlight st_filet ctermfg=green ctermbg=blue
highlight st_modif ctermfg=white ctermbg=red
highlight st_ascii ctermfg=brown ctermbg=lightgray
highlight st_col ctermfg=cyan ctermbg=darkgrey
highlight st_line ctermfg=yellow ctermbg=blue
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Latex stuff {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" some defaults for using vim as a latex editor, requires a plugin iirc
" I don't use these anymore but I keep them around in case I want to later
let g:Tex_Flavor = "latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='mupdf'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Autocommands {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make template files appear as cpp files
autocmd BufNewFile,BufReadPost *.template set filetype=cpp

" open the matching .c file if I try to open a .o file
autocmd BufRead *.o edit *.c

" turn off automatic folding on Makefiles
autocmd BufRead Makefile setlocal foldmethod=manual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Insert mode remaps {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lovely esc shortcut
inoremap jk <Esc>
" auto-brackets shortcut for programming
inoremap {} {<CR>}<Esc>O

" Function shortcuts
inoremap <Leader>fps ft_putstr(
inoremap <Leader>fpe ft_putendl(
inoremap <Leader>fpc ft_putchar(
inoremap <Leader>fpcn ft_putchar('\n');
inoremap <Leader>fpn ft_putnbr(
inoremap <Leader>ftp ft_printf("
inoremap <Leader>pr printf("
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Normal mode remaps {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickly toggle relative numbers
nnoremap <Leader>r :set relativenumber!<CR>
" quickly toggle numbers
nnoremap <Leader>n :set number!<CR>

" disables last highlight
nnoremap <CR> :noh<CR>
" toggles fold
nnoremap <Space> za

" Commenting shortcuts
nnoremap <Leader>c I//<Esc>
nnoremap <Leader>C ^xx

" good for quickly putting a breakpoint-style printing statement
nnoremap <Leader>wt owrite(1,"t",1);<Esc>

" opens my notes file/folder in a small split for quick notes
nnoremap <Leader>sn :12sp ~/notes<CR>

" Window navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
" Tab navigation
nnoremap <C-A-h> gT
nnoremap <C-A-l> gt

" Terminal shortcuts
nnoremap <Leader>tt :tabe term:///bin/bash<CR>:set nonu nornu<CR>a
nnoremap <Leader>tv :vs term:///bin/bash<CR>:set nonu nornu<CR>a
nnoremap <Leader>ts :sp term:///bin/bash<CR>:set nonu nornu<CR>a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
" Terminal remaps {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nice esc shortcut, jk is inconvenient for scrolling and <c-\><c-n> sucks
tnoremap \\ <C-\><C-n>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" Things I need to look into still {{{
"	quickfix
"	marks
"	jump list
"	tabline
"	making a filetype plugin for normal text files
"		set textwidth=80
"	fillchars
"	listchars
" }}}
" vim: foldmethod=marker foldmarker={{{,}}}
