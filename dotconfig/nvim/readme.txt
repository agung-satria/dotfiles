===========================================================================================================================
AGSTR NVIM CONFIG

Move init.vim file to ~/.config/nvim

1. install vimplug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
2. install node v12.12+ and npm
sudo pacman -S nodejs npm yad
sudo pacman ripgrep (search inside file, and go to the line (with new tab/buffer-Ctrl_t)
sudo pacman the_silver_searcher (another great file searcher)
sudo npm install -g live-server
yay -S fd-git 
node -v
npm -v

for prettier:
cd ~/.local/share/nvim/
npm i prettier
nvim
:PrettierCliPath
>> /home/agung/.local/share/nvim/node_modules/.bin/prettier
put it inside init.vim with command below (already in init.vim):
let g:prettier#exec_cmd_path = "/home/agung/.local/share/nvim/node_modules/.bin/prettier"
<leader>w => Pretttier and Save

3. sudo pacman -S python-pip
pip install pynvim --upgrade

:so % (inside nvim) or r
:PlugInstall (inside nvim)

Conqueror of completion:
source : https://github.com/neoclide/coc.nvim
:CocInstall coc-html coc-css coc-json coc-tsserver coc-phpls

Bracey = live server (not installed)
https://github.com/turbio/bracey.vim
read the instruction to install:
cd ~/.vim/plugged/bracey.vim
run :
npm install --prefix server
===========================================================================================================================
mapleader for nvim = " "
mapleader (ctrl+y) emmet = ,
hh in insert mode after typing tag/element
===========================================================================================================================
Live Server (Bracey)
:BraceyStart <leader>+ls
:BraceyStop <leader>+lS
:BraceyReload
===========================================================================================================================
<leader>+n = toggle Nerd tree
===========================================================================================================================
File Search <leader>+o = search for the file you’re looking for,
and press: 
CTRL+t to open it in a new tab.
CTRL+x to open below (split view).
CTRL+v to open to the side (vertical split).
Enter to open it in the currently selected panel.
===========================================================================================================================
Commenting :
gcc = comment one line
gcgc = uncomment on line
gcap = comment paragraph
===========================================================================================================================
Move focus split: 
ctrl+h,j,k,l = move focus
shift + h,l = move tab
===========================================================================================================================
On Nerd tree :
? = help t = open new tab
s = open horizontally (samping)
i = open vertically (bawah)
shift+i = toggle hidden file
===========================================================================================================================
Colorschemes:
<leader>e1 :colorscheme dracula
<leader>e2 :colorscheme jellybeans
===========================================================================================================================
Coolor Plugin
Color Picker :
sudo pacman -S yad (or zenity)
F5 :insert Hex color
F6 :insert RGB Color
F7 :insert RGBA Color
F8 :insert HSL Color
===========================================================================================================================
Surround Plugin

cs"': for the word you're on, change the surrounding quotes from double to single
cs'<q>: do the same, but change the single quotes to <q>
ds": delete the double quotes around something
ysiw[: surround the current word with brackets
ysiw<em>: emphasize the current word (it works with text objects!) Want to know what's crazier about that? It's dot repeatable!.
Visual Mode: select anything, and then type S. You'll be brought to the bottom of the window. Now type in what you want to wrap that with, such as <a href="/images">, and then press enter.
