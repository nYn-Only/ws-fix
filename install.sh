#!/bin/bash

# > hapus log sebelumnya
clear;

# > stop ws epro
systemctl disable ws-epro; systemctl stop ws-epro; sleep 7

# > hapus log sebelumnya
clear;

# > Add new Api
echo -e "";
echo -e "Add New Api & Update Please Wait...!" | lolcat
echo -e "";
curl --silent --ipv4 --disable --no-buffer --url "https://raw.githubusercontent.com/nYn-Only/ws-fix/main/python-new" --output /etc/script/rendang/bin/python-new
chmod +x /etc/script/rendang/bin/python-new
sleep 5

# > hapus log sebelumnya
clear;

# >> Installing New Api
curl --silent --ipv4 --disable --no-buffer --url "https://raw.githubusercontent.com/nYn-Only/ws-fix/main/api-new" --output /etc/script/rendang/bin/api-new
chmod +x /etc/script/rendang/bin/api-new
curl --silent --ipv4 --disable --no-buffer --url "https://raw.githubusercontent.com/nYn-Only/ws-fix/main/api-new.service" --output /etc/systemd/system/api-new.service
systemctl daemon-reload; systemctl disable api-new; systemctl stop api-new; systemctl enable api-new; systemctl start api-new; systemctl restart api-new

# > hapus log sebelumnya
clear;

# > check new Api
systemctl status api-new

echo -e "";
echo -e "";
echo -e "Add New Api & Update Done, And Reboot in 15...!" | lolcat
echo -e "";
sleep 7

# > hapus log sebelumnya
clear;

# > delete and reboot
rm -rf /root/install; reboot
