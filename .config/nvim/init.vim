call plug#begin()
" https://github.com/junegunn/vim-plug
call plug#end()

set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=a
filetype plugin on
set ttyfast
"
set background=light

"vnoremap <C-j> :m '>+1<CR>gv=gv
"vnoremap <C-k> :m '<-2<CR>gv=gv
"inoremap <C-j> :m .+1<CR>==gi
"inoremap <C-k> :m .-2<CR>==gi
