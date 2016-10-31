set number ai background=dark
syntax on
autocmd BufNewFile,BufReadPost *.template set filetype=cpp
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:Tex_Flavor = "latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='mupdf'
