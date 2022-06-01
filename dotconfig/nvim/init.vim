set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set showcmd
set showmode
set nohidden
set hlsearch
set incsearch
set title
set ignorecase
set noswapfile
set encoding=utf-8
set scrolloff=8
syntax on

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'chrisbra/colorizer'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Asheq/close-buffers.vim'

call plug#end()

let mapleader = " "
inoremap jk <esc> 

:colorscheme gruvbox 

" Airline theme:
let g:airline_theme='simple'
" " Airline arrow:
let g:airline_powerline_fonts = 1

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" run colorhighlight when open vim
autocmd VimEnter * ColorHighlight

" emmet
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'
" let g:user_emmet_leader_key=' ' "change ctrl+y->, to ,
" let g:user_emmet_leader_key='hh'
" inoremap <A-c> <esc><C-y>,
imap hh <esc><C-y>, hi

" switching tabs by ctrl+rightLeft arrow
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" switching tabs by shift+h-l
nnoremap H gT
nnoremap L gt

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" To resize windows vertical split:
:map - <C-W>-
:map = <C-W>+

" To resize windows horizontal split:
" nnoremap <silent> <c-i> <C-W><
" nnoremap <silent> <c-o> <C-W>>

" Move focus split with ctrl+shift+{h
nnoremap <silent> <c-k> <C-W>k
nnoremap <silent> <c-j> <C-W>j
nnoremap <silent> <c-h> <C-W>h
nnoremap <silent> <c-l> <C-W>l

" Move focus split with leader+{h
nnoremap <leader>k <C-W>k
nnoremap <leader>j <C-W>j
nnoremap <leader>h <C-W>h
nnoremap <leader>l <C-W>l

" Page Up/Down with Shift+{j,k}
nnoremap <silent> J <C-F>
nnoremap <silent> K <C-B>

" Colorscheme
nnoremap <leader>ee :ColorHighlight <CR>
nnoremap <leader>e1 :colorscheme gruvbox <CR>
nnoremap <leader>e2 :colorscheme jellybeans <CR>

" Remove whitespaces
nnoremap <leader>rw :%s/\s\{1,}/new/g <left><left><left>

" Change or add extension
" nnoremap <leader>ez :'<,'>norm Achangethis
" nnoremap <leader>ex :'<,'>s/$/changethis/
nnoremap <leader>ez gg V G <esc> :'<,'>norm Achangethis
nnoremap <leader>ex gg V G <esc> :'<,'>s/$/changethis/<left>

" Put sequance number
nnoremap <leader>sq :$put =range(0,10)<left><left><left><left>

" Remove Search Highlight
nnoremap <leader>cc :noh <CR>

" Remove some last chacacter
nnoremap <leader>rl :%s/.\{1}$// <left><left><left><left><left>

" Quick save
nnoremap <leader>w :w <CR>
inoremap <F10> <ESC> :w <CR>
nnoremap <F10> <ESC> :w <CR>

" reload nvim
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>

" copy paste
vnoremap <C-c> "+y
vnoremap <C-x> "+x

" Set number
nnoremap <F3> :set nu! <CR>
nnoremap <F4> :set rnu! <CR>
inoremap <F3> <ESC> :set nu! <CR>i
inoremap <F4> <ESC> :set rnu! <CR>i

" Select all
nnoremap <C-a> ggVG
inoremap <C-a> <ESC> ggVG

" Split
noremap <leader>vs :vsplit<CR><C-w>r
noremap <leader>ss :split<CR><C-w>r

" Type and replace
nnoremap <leader>fr :s/old/new/g<Left><Left><Left><Left><Left><Left>
nnoremap <leader>ff :%s/old/new/g<Left><Left><Left><Left><Left><Left>

" Abbreviations
abbr emaila agungsatria890@gmail.com

" Copy path, directory, name
" absolute path (/something/src/foo.txt)
nnoremap <leader>cf :let @*=expand("%:p")<CR>
" filename (foo.txt)
nnoremap <leader>cn :let @*=expand("%:t")<CR>
" directory name (/something/src)
nnoremap <leader>cd :let @*=expand("%:p:h")<CR>

"================================================= FZF CONFIG =================================================
nnoremap <leader>o :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH " for windows 10, specified git path to rendered the preview
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } } " preview
" let g:fzf_layout = { 'down': '40%' } " preview on the bottom
"================================================= FZF CONFIG =================================================
