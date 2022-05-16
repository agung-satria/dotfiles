===========================================================================================================================
INSTALL AGUNG'S NVIM CONFIG

Move init.vim file to ~/.config/nvim

1. install vimplug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
2. install node v12.12+ and npm
sudo pacman -S nodejs npm
node -v
npm -v

3. sudo pacman -S python-pip
pip install pynvim --upgrade

:so % (inside nvim) or r
:PlugInstall (inside nvim)

Conqueror of completion:
source : https://github.com/neoclide/coc.nvim
:CocInstall coc-html coc-css coc-json coc-tsserver

Bracey = live server
https://github.com/turbio/bracey.vim
read the instruction to install:
cd ~/.vim/plugged/bracey.vim
run :
npm install --prefix server
===========================================================================================================================
mapleader for nvim = " "
mapleader (ctrl+y) emmet = ,
===========================================================================================================================
untuk mengecek setting tambahan
utk vimplug yang lain sudah terinstall ketika :PlugInstall diatas
===========================================================================================================================
Emmet example:
ketik html:5 -> <ctrl+y>, leader key now is , jadi, cukup ,,
html:5 -> then ,,
table -> then ,,
<ctrl+y>, = ,,
div# + ,, or # + ,,
===========================================================================================================================
Live Server (Bracey)
:BraceyStart <leader>+ls
:BraceyStop
:BraceyReload
===========================================================================================================================
<ctrl+t> = toggle Nerd tree
<leader>+n = toggle Nerd tree
===========================================================================================================================
File Search <leader>+O = search for the file you’re looking for,
and press: CTRL+T to open it in a new tab.
CTRL+S to open below (split view).
CTRL+V to open to the side (vertical split).
Enter to open it in the currently selected panel.
===========================================================================================================================
Commenting :
gcc = comment one line
gcgc = uncomment on line
gcap = comment paragraph
===========================================================================================================================
Split size: 
90 = increase/decrease vertically 
Ctrl+{i,o} = increase/decrease horizontally
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
<leader>e2 :colorscheme gruvbox
<leader>e3 :colorscheme codedark
<leader>e4 :colorscheme darkburn
<leader>e5 :colorscheme darkbone
<leader>e6 :colorscheme darkglass
<leader>ee :ColorHighlight
===========================================================================================================================
Color Picker :
alt+v
rgb color anywhere (NORMAL and INSERT modes). hsl color anywhere (NORMAL and INSERT modes). rgba color anywhere (NORMAL and INSERT modes). Make sure zenity or yad is instaled
===========================================================================================================================
Personal need:

Sequence number:
<leader>+sq
maka... :$put =range(0,10)
sesuaikan sequence nya (ganti 0,10-nya)

Mengganti akhir setiap baris (ex: extension)
select dulu yang mau diganti - esc again
<leader>ex
or
<leader>ez
===========================================================================================================================
If error:
run :checkhealth
example error pynvim not installed
so... pip install pynvim
===========================================================================================================================
Surround Plugin

cs"': for the word you're on, change the surrounding quotes from double to single
cs'<q>: do the same, but change the single quotes to <q>
ds": delete the double quotes around something
ysiw[: surround the current word with brackets
ysiw<em>: emphasize the current word (it works with text objects!) Want to know what's crazier about that? It's dot repeatable!.
Visual Mode: select anything, and then type S. You'll be brought to the bottom of the window. Now type in what you want to wrap that with, such as <a href="/images">, and then press enter.
