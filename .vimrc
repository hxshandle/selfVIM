let mapleader = ","
let g:mapleader =","
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
set fdm=indent
set nocompatible
set syntax=on
set noeb
"set autoindent
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set number
set history=500
set nobackup
set noswapfile
set ignorecase
set hlsearch
set incsearch
set enc=utf-8
set fencs=utf-8,ucs-bom,cp936
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set cmdheight=1
filetype on
filetype plugin on
filetype indent on
set showmatch
set scrolloff=3
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC> :NERDTreeToggle<CR>
set ts=2
set expandtab
set cursorline
map <F3> :TagbarToggle<CR>
map <F4> :BufExplorer<CR>
map <F9> :call JavascriptLint()<cr>
map <C-t> :tabnew<cr>
map <S-left> :tabp<CR>
map <S-right> :tabn<CR>
map <leader>t :tabnew<CR>
map <C-j> <J>
map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l
set ofu=syntaxcomplete#Complete
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:jslint_highlight_color=0
