set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Command-T'
Plugin 'The-NERD-tree'
Plugin 'jsbeautify'
Plugin 'Tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'Mark'
Plugin 'mattn/emmet-vim'
Plugin 'bufexplorer.zip'
Plugin 'SuperTab'
"Plugin 'jslint.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'digitaltoad/vim-jade'
Plugin 'ack.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'Pydiction'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


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
set backspace=indent,eol,start

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
map <C-t> :CommandT<cr>
map <S-left> :tabp<CR>
map <S-right> :tabn<CR>
map <leader>t :tabnew<CR>
map <C-j> <J>
map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l
map <M-j> :m+<CR>
map <M-k> :m-2<CR>
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
"colorscheme jellybeans
set guifont=DejaVu_Sans_Mono:h11:cANSI
syntax on

"ctrlP config
set wildignore+=*/tmp/*,*/generated/*,*/target/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_max_files=0
