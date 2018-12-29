" Highlight groups for my statusline
highlight Normal ctermfg=250 ctermbg=none
highlight st_norm ctermfg=fg ctermbg=none cterm=reverse
highlight st_filen ctermfg=white ctermbg=darkmagenta
highlight st_filet ctermfg=green ctermbg=blue
highlight st_modif ctermfg=white ctermbg=red
highlight st_ascii ctermfg=brown ctermbg=lightgray
highlight st_col ctermfg=cyan ctermbg=darkgrey
highlight st_line ctermfg=yellow ctermbg=blue

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
set statusline+=%#st_file#	" filename color
set statusline+=\ 			" space separator
set statusline+=[%P]		" percentage of file (top, bot, all, or percent)
set statusline+=\ 			" space separator
