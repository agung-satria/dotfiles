" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'turbio/bracey.vim'
Plug 'vim-scripts/loremipsum'
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'chrisbra/colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

" Airline theme:
let g:airline_theme='simple'
" Airline arrow:
let g:airline_powerline_fonts = 1

" mapleader
let mapleader = " "

" FZF
" nnoremap <C-p> :FZF<CR>
" nnoremap <C-o> :FZF<CR>
nnoremap <leader>o :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

inoremap jk <ESC>
"nmap <C-n> :NERDTreeToggle<CR>
"vmap ++ <plug>NERDCommenterToggle
"nmap ++ <plug>NERDCommenterToggle
" nerd tree
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" nnoremap <C-S-f> :NERDTreeFind<CR>

" run colorhighlight when open vim
autocmd VimEnter * ColorHighlight
autocmd VimEnter * ColorHighlight


" emmet
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=',' "mengganti ctrl+y->, menjadi ,

" tab on insert mode for emmet?
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" not working!?

" agstr, disable some keybindings
map <C-Z> <Nop>
map <C-z> <Nop>

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         

let g:NERDTreeIgnore = ['^node_modules$']

"commentary-vim
autocmd FileType apache setlocal commentstring=#\ %s


" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set hlsearch
set incsearch
set ignorecase
set smartcase
set number
" set relativenumber
set title
set smarttab
set cindent
set tabstop=2
set shiftwidth=2

" always uses spaces instead of tab characters
set expandtab
set is hls

" Toggle highlighting on/off, and show current value.
" :noremap <F4> :set hlsearch! hlsearch?<CR>
:noremap <leader>v :set hlsearch! hlsearch?<CR>
" :noremap <leader>h :set hlsearch! hlsearch?<CR>

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree

" autocmd BufEnter * call SyncTree() agungcommented: for disable double tree

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>u  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Display options
set showcmd
set showmode

" Turn on syntax highlighting
syntax on

" Turn on line wrapping
set wrap

" Set colorscheme
" colorscheme 256-grayvim 

" Better Scrolling
set scrolloff=8

" Encoding
set encoding=utf-8

" Highlight matching search patterns but turn off after enter is pressed
" set nohlsearch

" Tab settings
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

"colorscheme 0x7A69_dark
"colorscheme harlequin
"colorscheme lazarus
" colorscheme landscape
" colorscheme codedark
" colorscheme gruvbox
" colorscheme dracula
colorscheme darkbone
" colorscheme darkburn
" colorscheme darkglass
" colorscheme aaonehalflight

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
"noremap 0 :tablast<cr>

"To resize windows vertical split:
:map - <C-W>-
:map = <C-W>+

"To resize windows horizontal split:
" :map 9 <C-W><
" :map 0 <C-W>>
nmap <silent> <c-o> <C-W><
nmap <silent> <c-p> <C-W>>

"Move focus split with ctrl+shift+{hjkl}
"nmap <silent> <c-s-k> <C-W>k
"nmap <silent> <c-s-j> <C-W>j
"nmap <silent> <c-s-h> <C-W>h
"nmap <silent> <c-s-l> <C-W>l

"Move focus split with ctrl+shift+{hjkl}
nmap <silent> <c-k> <C-W>k
nmap <silent> <c-j> <C-W>j
nmap <silent> <c-h> <C-W>h
nmap <silent> <c-l> <C-W>l

"Move focus split with leader+{hjkl}
nmap <leader>k <C-W>k
nmap <leader>j <C-W>j
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l

" Page Up/Down with Shift+{j,k}
nmap <silent> J <C-F>
nmap <silent> K <C-B>

" colorscheme
nmap <leader>ee :ColorHighlight <CR>
nmap <leader>e1 :colorscheme dracula <CR>
nmap <leader>e2 :colorscheme gruvbox <CR>
nmap <leader>e3 :colorscheme codedark <CR>
nmap <leader>e4 :colorscheme darkburn <CR>
nmap <leader>e5 :colorscheme darkbone <CR>
nmap <leader>e6 :colorscheme darkglass <CR>
nmap <leader>sq :$put =range(0,10)
nmap <leader>ex :'<,'>s/$/changethis/
" remove WhiteSpace
nmap <leader>rw :%s/\s\{1,}//g <CR>
nmap <leader>ez :'<,'>norm Achangethis
nmap <leader>c :noh <CR>

" Bracey to <leader>lv (live server)
nmap <leader>ls :Bracey <CR>


" Quick save
nmap <leader>w :w <CR>
imap <F10> <ESC> :w <CR>
nmap <F10> <ESC> :w <CR>
" imap <F4> <ESC> :set rnu! <CR>i
" restart nvim
nmap <leader>r :so ~/.config/nvim/init.vim<CR>

" copy paste
vnoremap <C-c> "+y
vnoremap <C-x> "+x

" vnoremap <C-o> :e 
"map <C-S-v> "+p
" map <C-v> "+p
"vnoremap (C-c) "*y :let @+=@*<CR> 

"run : :CocInstall coc-tsserver coc-json coc-html coc-css CocInstall coc-phpls
"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-y>,\<CR>"

" Ignoring node_modules
" When using npm, the node_modules folder will often fill out most of the search results. To ignore that, and all files included in the .gitignore file, you’ll need to tell fzf to use silversearcher-ag:
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_COMMAND=""

" agstr references :
" https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd

" Changes added below as shown in video VIM(18)
" Map F3 to toggle number line in normal mode
nmap <F3> :set nu! <CR>

" Map F4 to toggle relative number line in normal mode
nmap <F4> :set rnu! <CR>

" Map F3 to toggle line number in INSERT mode
imap <F3> <ESC> :set nu! <CR>i

" Map F4 to toggle relative line number in INSERT mode
imap <F4> <ESC> :set rnu! <CR>i

" Terminal
nmap <leader>t :term<CR>

" Find and replace
nmap <leader>fr :s/old/new/g
nmap <leader>fR :%s/old/new/g

" Ctrl + A to select all
nmap <C-a> ggVG
imap <C-a> <ESC> ggVG

" Fast split
nmap <leader>vs :vsplit<CR>
nmap <leader>ss :split<CR>

" Auto correction dictionary
abbr ture true
abbr flase false
abbr emaila agungsatria890@gmail.com
