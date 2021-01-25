
let mapleader =","
let bib=expand("%:r")

set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamed,unnamedplus

" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	set encoding=utf-8
	set number relativenumber


" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-W>h
	map <C-l> <C-W>l
	map <C-k> <C-W>k
	map <C-j> <C-W>j

" Enable autocompletion
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <Super>o 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_gb<CR>

" Spell-check set to <Super>m':
	map <leader>m :setlocal spell! spelllang=es<CR>


" Open my bibliography file in split

	map <leader>b :execute "vsp " . bib . ".bib"<CR>
	map <leader>r :vsp<space>$REFER<CR>

" Compile document, be it groff/LaTex/markdown/etc.
	map <leader>c :w! \| !compiler <C-r>%<CR>

" Compile xelatex
	map <leader>x :w! \| !xelatex  <c-r>%<CR>
" Compile lualatex
	map <leader>l :w! \| !lualatex <c-r>%<CR>

	



" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <C-r>%<CR><CR>
" Set color of the font when spelling with ctrermfg=[0-2550] and 
" ctermbg=[0-250] corresponds to the background color of highlight
" in this case ctermbg=000 set no highlight and cterm sets bold, italic etc
"hi clear SpellBad
"hi SpellBad cterm=underline
hi SpellBad ctermfg=100 ctermbg=000 cterm=italic
hi SpellLocal ctermfg=200 ctermbg=010 
"



" Ensure files are read as what I want:
	autocmd BufRead,BufNewFile *.bib set filetype=bib
 
" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
"	vnoremap <C-c> "+y
	vnoremap <C-c> "+y
	map <C-p> "+P
