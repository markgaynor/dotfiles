execute pathogen#infect()
set nocompatible         
filetype plugin indent on 
set t_Co=256             
syntax enable           
colorscheme slate  
:color slate
set number            
set laststatus=2     
set nohlsearch       
set incsearch       
set ignorecase     
set ruler         
set autoindent     
set tabstop=4      
set softtabstop=4   
set shiftwidth=4    
set shiftround      
set expandtab       
set smarttab       
set nowrap        
set relativenumber 
set so=20
set wrap 

"" Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'

