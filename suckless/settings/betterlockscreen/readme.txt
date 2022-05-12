Buid betterlockscreen:
wget https://github.com/pavanjadhaw/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip

sudo cd betterlockscreen-main/
sudo chmod u+x betterlockscreen
sudo cp betterlockscreen /usr/local/bin/

sudo cp system/betterlockscreen@.service /usr/lib/systemd/system/
sudo systemctl enable betterlockscreen@$USER
betterlockscreen -u ~/.dwm/wallpapers/lake.jpg
DONE!

