set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
" insert space characters whenever the tab key is presse
set expandtab

" insert 4 spaces characters when tab key is pressed
set tabstop=4

" insert 4 spaces wen autoindent indents
set shiftwidth=4
set softtabstop=4
set smarttab

set listchars=tab:>-,eol:$
set list
" automatically indent files
set autoindent

" Do smart indentation depending on code syntax (e.g. change after { }, keywords etc)
set smartindent

" set syntax highlighting on
syntax on

set number

" PHP syntax check
" set makeprg=php\ -l\ %
" set errorformat=%m\ in\ %f\ on\ line\ %l

" autocmd BufWritePre * :%s/\s\+$//e

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Status Line
"set laststatus=2
"set statusline=%F%m%r%h%w\
"set statusline+=%{fugitive#statusline()}\
"set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
"set statusline+=\ [line\ %l\/%L]

"hi StatusLine ctermbg=DarkBlue
"hi StatusLine ctermfg=Black ctermbg=White

" Vim Airline
set laststatus=2

" Tags
set tags=tags

" Pathogen
execute pathogen#infect()

colorscheme luna-term

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <F3> :NERDTreeToggle<CR>

" Buffer movements
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Format json (cpan JSON::XS)
map <F4> <Esc>:%!json_xs -f json -t json-pretty<CR>

" Format XML (xmllint)
map <F5> <Esc>:%!xmllint --format --encode UTF-8 -<CR>

" Turn off html syntax checking
nnoremap <F6> :SyntasticCheck<CR> :SyntasticToggleMode<CR>
