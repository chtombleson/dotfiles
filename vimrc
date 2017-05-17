"=======================================
" General
"=======================================
set laststatus=2
set t_Co=256

" Buffer movements
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set listchars=tab:>-,eol:$
set list

" Column ruler
set colorcolumn=80,120

" Autoindent
set autoindent

" Syntax and line numbers
syntax on
set number

"=======================================
" Powerline
"=======================================
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"=======================================
" Pathogen
"=======================================
execute pathogen#infect()

"=======================================
" Nerdtree
"=======================================

" Toogle Nerdtree
map <F3> :NERDTreeToggle<CR>

" Close vim if Nerdtree window is the only one left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"=======================================
" Colour Scheme
"=======================================
colorscheme luna-term

"=======================================
" Syntastic
"=======================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php']
let g:syntastic_js_checkers = ['eslint']

"=======================================
" Silverstripe
"=======================================
au BufRead,BufNewFile *.ss set filetype=html
