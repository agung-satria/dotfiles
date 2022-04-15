cp all (except) readme to ~/.config/ranger

sudo pacman -S ranger ueberzug
untuk video preview:
sudo pacman -S ffmpeg ffmpegthumbnailer
sudo pacman -S perl-image-exiftool feh zathura trash-cli
dev icons:
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

drag and drop using Ctrl-d:
sudo pacman -S ghc-libs
git clone https://github.com/mwh/dragon
(this repo is cloned, and zipped/not built yet)
tar -xf dragon.tar.xz
cd dragon
make
sudo make install
sudo cp dragon /usr/bin
cd ..
rm -rf dragon (optional)

From source code:
cp ./rc.conf ~/.config/ranger
cp ./rifle.conf ~/.config/ranger
cp ./commands.py ~/.config/ranger
cp ./commands_full.py ~/.config/ranger
cp ./scope.sh ~/.config/ranger
chmod +x ~/.config/ranger/scope.sh

mkdir ~/.config/ranger/colorschemes
cp ./colorschemes/colorful.py ~/.config/ranger/colorschemes

More colorscheme :
https://gitlab.com/agstr/dotfiles/-/blob/master/home-agung/.config/ranger/colorschemes/

Additional settings and tips:
change default ranger editor
add to .zshrc or .bashrc
export VISUAL=nvim;
export EDITOR=nvim;

on bulkrename, dan masuk kedalam vim:
mengganti akhir setiap baris (ex: extension)
select all - esc again
<leader>ex
or
<leader>ez

# END #
