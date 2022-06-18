set number 
set nowrap
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set showcmd
set showmode
set hidden
set hlsearch
set incsearch
set title
set ignorecase
set noswapfile
set encoding=UTF-8
set scrolloff=8
set expandtab
set cindent
set smartindent
" set relativenumber
" set autoindent
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
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'chrisbra/colorizer'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/airblade/vim-rooter'
Plug 'vim-scripts/indentLine.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'vim-scripts/loremipsum'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

"^^^^^^^^^^^^^^^^^^^^^^^^^^ my config ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
let mapleader = " "
inoremap jk <esc>

" toggle buffer, instead of Ctrl+6 or Ctrl-^ whatever
nnoremap <leader><tab> :b#<cr>
nnoremap <tab> :b#<cr>

" switching tabs by ctrl+rightLeft arrow
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" switching tabs by shift+h-l
nmap H gT
nmap L gt

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

" Select html element to close tag
nmap <leader>vv V %
" Select html element to close tag and yank it,
" but if the tag only has 1 char (a, p, etc)
" do the remap on the first opening bracket
" (instead of on the iddle of the tag char
" make sure the html Prettier
nmap <leader>vy V % y l %

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

" Save (use with prettier and save instead/ see prettier config bellow)
" nnoremap <leader>w :w <CR> 

" Quick save
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

" no highlight search
noremap <leader>cc :nohl<CR>

" Abbreviations
abbr emaila agungsatria890@gmail.com

" Copy path, directory, name
" absolute path (/something/src/foo.txt)
nnoremap <leader>cf :let @*=expand("%:p")<CR>
" filename (foo.txt)
nnoremap <leader>cn :let @*=expand("%:t")<CR>
" directory name (/something/src)
nnoremap <leader>cd :let @*=expand("%:p:h")<CR>

" For autoload folding
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
"_________________________ my config _______________________________
"^^^^^^^^^^^^^^^^^^^^ multi cursor config ^^^^^^^^^^^^^^^^^^^^^^^^^^^
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"____________________ multi cursor config ___________________________

"^^^^^^^^^^^^^^^^^^^^ dev icon config ^^^^^^^^^^^^^^^^^^^^^^^^^^^
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
"____________________ dev icon config ___________________________

"^^^^^^^^^^^^^^^^^^^^ colorscheme config ^^^^^^^^^^^^^^^^^^^^^^^^^^^
:colorscheme gruvbox 
nnoremap <leader>ee :ColorHighlight <CR>
nnoremap <leader>e1 :colorscheme gruvbox <CR>
nnoremap <leader>e2 :colorscheme jellybeans <CR>
nnoremap <leader>e3 :colorscheme purify <CR>
nnoremap <leader>e4 :colorscheme solarized8_high <CR>
nnoremap <leader>e5 :colorscheme darkblue <CR>
"____________________ colorscheme config ___________________________

"^^^^^^^^^^^^^^^^^^^^ vim airline config ^^^^^^^^^^^^^^^^^^^^^^^^^^^
" Airline theme:
let g:airline_theme='simple'
" Airline arrow:
let g:airline_powerline_fonts = 1
"____________________ vim airline config ___________________________

"^^^^^^^^^^^^^^^^^^^^^ nerdtree config ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" run colorhighlight when open vim
autocmd VimEnter * ColorHighlight

" Run NerdTree when open vim
" autocmd VimEnter * NERDTreeToggle
"_____________________ nerdtree config _________________________

"^^^^^^^^^^^^^^^^^^^^^^ emmet config ^^^^^^^^^^^^^^^^^^^^^^^^^^^
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'
" let g:user_emmet_leader_key=' ' "change ctrl+y->, to ,
" let g:user_emmet_leader_key='hh'
" inoremap <A-c> <esc><C-y>,
imap hh <esc><C-y>, hi
"______________________ emmet config ___________________________

"^^^^^^^^^^^^^^^^^^^^^^^ FZF CONFIG ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" nnoremap <leader>o :Files<CR> " did same with FZF?
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>o :FZF<CR>
nnoremap <leader>O :FZF~<CR>
nnoremap <leader>p :Files<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH " for windows 10, specified git path to rendered the preview
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } } " preview
" let g:fzf_layout = { 'down': '40%' } " preview on the bottom

" search also the hidden files
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
"_______________________ FZF CONFIG ____________________________

"^^^^^^^^^^^^^^^^^^^^^^^ COC CONFIG ^^^^^^^^^^^^^^^^^^^^^
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> D :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"_______________________ coc config _____________________


"^^^^^^^^^^^^^^^^^^ vimrooter config ^^^^^^^^^^^^^^^^^^^^^^
" Everything (default)
let g:rooter_targets = '/,*'

" All files
let g:rooter_targets = '*'

let g:rooter_patterns = ['=src']
"__________________ vimrooter config ______________________

"^^^^^^^^^^^^^^^^^^ indent plug config ^^^^^^^^^^^^^^^^^^^
let g:indentLine_color_term = 239
let g:indentLine_char       = '▏'
let g:indentLine_setConceal = 0
" _________________ indent plug config ___________________

"^^^^^^^^^^^^^^^^^^^^ vcoolor config ^^^^^^^^^^^^^^^^^^^^^^^^^
let g:vcoolor_map =         '<F5>'      " Insert hex color.
let g:vcool_ins_rgb_map =   '<F6>'		" Insert rgb color.
let g:vcool_ins_rgba_map =  '<F7>'		" Insert rgba color.
let g:vcool_ins_hsl_map =   '<F8>'		" Insert hsl color.
"____________________ vcoolor config _______________________

"^^^^^^^^^^^^^^^^^^^ Prettier config ^^^^^^^^^^^^^^^^^^^^^^^^^
nmap <Leader>y <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#tab_width = '2'

" read vvnvimreadme
let g:prettier#exec_cmd_path = "/home/agung/.local/share/nvim/node_modules/.bin/prettier"

"prettier and ave
nmap <Leader>w <Plug>(Prettier) :w<CR>
"___________________ Prettier config _________________________
