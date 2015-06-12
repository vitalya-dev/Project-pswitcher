#!/usr/bin/sh
proxy_mode=`gsettings get org.gnome.system.proxy mode`;
if [ $proxy_mode == "'none'" ];
then 
  /usr/bin/gsettings set org.gnome.system.proxy mode 'manual';
  /usr/bin/notify-send 'Pswitcher' 'Switch proxy mode to manual'
    --icon=dialog-information 
else
  /usr/bin/gsettings set org.gnome.system.proxy mode 'none'; 
  /usr/bin/notify-send 'Pswitcher' 'Switch proxy mode to none'
    --icon=dialog-information 
fi
