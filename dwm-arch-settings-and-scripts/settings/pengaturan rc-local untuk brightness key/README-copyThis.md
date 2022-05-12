https://www.linuxsec.org/2020/12/mengaktifkan-kompatibilitas-etcrclocal.html
Copy-kan 
sudo cp ~/.dwm/dwmstatus-scripts/brightness-setter.sh /usr/bin

Kita bisa cek terlebih dahulu dengan command:
sudo systemctl status rc-local
Jika statusnya failed atau error, selanjutnya ikuti cara dibawah.

Pertama, kita buat terlebih dahulu file script bash /etc/rc.local nya:
printf '%s\n' '#!/bin/bash' 'exit 0' | sudo tee -a /etc/rc.local

Selanjutnya beri hak eksekusi ke file tersebut.


sudo chmod +x /etc/rc.local
Lanjut buat service Systemd nya.

sudo nvim /etc/systemd/system/rc-local.service
Lalu isinya:
=====================================(yang didalam garis ini saja)
[Unit]
Description=/etc/rc.local Compatibility
ConditionPathExists=/etc/rc.local

[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99

[Install]
WantedBy=multi-user.target
=====================================(yang didalam garis ini saja)
Lalu aktifkan service nya.
sudo systemctl daemon-reload
sudo systemctl enable rc-local
sudo systemctl start rc-local
sudo systemctl status rc-local

pastikan status nya running

Sekarang kalian bisa memasukkan command yang ingin langsung dieksekusi saat bootingg di /etc/rc.local. Masukkan sebelum exit 0.  Contoh, disini saya menyisipkan command untuk mengeksekusi perintah agar backlight di Thinkpad saya langsung menyala saat booting.

cat /etc/rc.local :
#!/bin/bash
sudo chown agung:agung /sys/class/backlight/amdgpu_bl0/*
exit 0
