"--------------------------------------------------
" => Plugin
"--------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'taglist.vim'
Bundle 'Command-T'
Bundle 'The-NERD-tree'
Bundle 'Markdown'
Bundle 'jsbeautify'
Bundle 'Tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'Mark'
Bundle 'ZenCoding.vim'
Bundle 'bufexplorer.zip'
Bundle 'SuperTab'
Bundle 'jslint.vim'
Bundle 'ack.vim'
Bundle 'hxshandle/sf-vim-toolbox.git'
"for python
Bundle 'Pydiction'
Bundle 'pep8'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"--------------------------------------------------
" => Common Setting
"--------------------------------------------------


set fdm=indent
set nocompatible
set syntax=on
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
set showmatch
set scrolloff=3
set ts=2
set expandtab
set cursorline
set nofoldenable

"--------------------------------------------------
" => Key Mapping
"--------------------------------------------------
let mapleader = ","
let g:mapleader =","
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :BufExplorer<CR>
map <F6> :!deploycmd<CR>
map <F9> :JSLintUpdate<cr>
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
set tags=./tags,tags;
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:pydiction_location='/home/handle/.vim/bundle/Pydiction/complete-dict'
"let g:JSLintHighlightErrorLine=0

"--------------------------------------------------
" => Key Mapping under tmux
"--------------------------------------------------

map <Esc>[C <S-Right>
map <Esc>[D <S-Left>
" insert mode
map! <Esc>[C <S-Right>
map! <Esc>[D <S-Left>
" no screen
map <Esc>[1;5D <S-Left>
map <Esc>[1;5C <S-Right>
" insert mode
map! <Esc>[1;5D <S-Left>
map! <Esc>[1;5C <S-Right>
let Tlist_Use_Right_Window = 1
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=magenta


