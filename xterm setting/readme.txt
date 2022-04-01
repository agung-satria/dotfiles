Copy .Xresources to home directory

After editing the file
run: 
xrdb -merge ~/.Xresources
Or add the intruction below to autamatically reflect it

If the settings specified in the .Xresource file are not getting reflected automatically, try adding the below line to ~/.bashrc or ~/.zshrc
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
