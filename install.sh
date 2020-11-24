#!/bin/bash

if [ ! -d "/etc/zramswap.conf" ]
then
   echo "copy zramswap.conf to /etc/zramswap.conf"
   sudo cp zramswap.conf /etc/zramswap.conf
fi

if [ ! -d "/usr/lib/systemd/scripts/zramctrl " ]
then
   echo "copy zramctrl to /usr/lib/systemd/scripts/zramctrl"
   sudo mkdir -p /usr/lib/systemd/scripts 
   sudo cp zramctrl /usr/lib/systemd/scripts/zramctrl 
   sudo chmod +x /usr/lib/systemd/scripts/zramctrl 
fi

if [ ! -d "/etc/systemd/system/zramswap.service " ]
then
   echo "copy zramswap.service to /etc/systemd/system/zramswap.service"
   sudo cp zramswap.service /etc/systemd/system/zramswap.service  
   sudo systemctl start zramswap.service
   sudo systemctl enable zramswap.service
   sudo systemctl daemon-reload
   sudo systemctl status zramswap 
fi

if [ -f "/usr/bin/zenity" ]
then
   zenity --info --text="恭喜！安装完成！" --no-markup
else
   echo ""
   echo "恭喜！安装完成！"
fi