" Display line number
set number

" Syntax highlighting defaultly on
syntax on

" Set exit insert as kj
:imap kj <Esc>

" Auto change $(pwd) to the current file I'm working on
" autocmd BufEnter * lcd %:p:h

" Set leader key to space. By default its backslack
let mapleader=" "

" Map leader s to reload .vimrc
map <leader>s :source ~/.vimrc<CR>

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight matching words when searching
set hlsearch

" Cancel searcch with <Esc>
nnoremap <silent> <Leader><Esc> :nohlsearch<Bar>:echo<CR>

" Go back to previous buffer
nnoremap <Leader><Leader> :e#<CR>

" Helps with screen flash and terminal output when running Ack.vim
" See: https://github.com/mileszs/ack.vim/issues/18
set shellpipe=>

" Default tab settings
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smartindent
filetype plugin indent on

" Language specific indentation rules
autocmd FileType python setl tabstop=4|setl shiftwidth=4|setl softtabstop=4
autocmd FileType html setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd FileType css setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd FileType scss setl tabstop=2|setl shiftwidth=2|setl softtabstop=2
autocmd Filetype ruby setlocal tabstop=2|setl shiftwidth=2|setl softtabstop=2

" Fixes delay when leaving insert mode
set ttimeoutlen=0
set timeoutlen=200 "default is 1sec

" Change cursor shape in different modes in iTerm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Change cursor shape in different modes in iTerm2 tmux
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Underline matching parens
hi MatchParen cterm=underline ctermbg=none ctermfg=none

" Splits to the right and below on default (more natural)
set splitright
set splitbelow

" Rebind split navigation, saves a key stroke, instead of `ctrl-w, j` just
" `ctrl-j`
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bind oo and OO to open a new line, move to it, and remain in normal mode.
nmap oo o<Esc>
nmap OO O<Esc>

" Color scheme from the spacegray.vim plugin
" colorscheme spacegray

" Plugins
call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ajh17/spacegray.vim'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
Plug 'valloric/youcompleteme', { 'do': './install.py' }

call plug#end()

" ctrlp customizations
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" vim-airline fix: https://github.com/vim-airline/vim-airline/wiki/FAQ
set laststatus=2

" airline theme
let g:airline_theme='minimalist'

" ctrl+n nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
" Nerd Tree to use split explorer model like netrw
let NERDTreeHijackNetrw=1
