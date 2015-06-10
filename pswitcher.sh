proxy_mode=`gsettings get org.gnome.system.proxy mode`;
if [ $proxy_mode == "'none'" ];
then 
  echo 'manual';
  /usr/bin/gsettings set org.gnome.system.proxy mode 'manual';
else
  echo 'none';
  /usr/bin/gsettings set org.gnome.system.proxy mode 'none'; 
fi
