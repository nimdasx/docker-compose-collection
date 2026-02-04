```
#modifi konfig service nginxmu seperti ini
#di nginx.conf, di dalam http {}
  set_real_ip_from 172.16.20.1;
  real_ip_header X-Forwarded-For;
  real_ip_recursive on;
  log_format goaccess 
    '$remote_addr - $remote_user [$time_local] ' 
    '"$request" $status $body_bytes_sent ' 
    '"$http_referer" "$http_user_agent" ' 
    '$request_time';

#di conf.d/vhost.conf / conf.d/default.conf, di dalam server {}
    access_log /nginx-goaccess-log/access.log goaccess;

#download geoip city taruh di folder goaccess
wget https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-City.mmdb

#buat htpassword di folder goaccess
sudo apt install apache2-utils
htpasswd -c goaccess.htpasswd wongedan

#log rotate ya biar gak penuh, log rotate di host ya, gak usah di container
sudo vim /etc/logrotate.d/nginx-goaccess
/lokasi-nginx-goaccess-log/*.log {
    daily
    rotate 14
    compress
    delaycompress
    missingok
    notifempty
    copytruncate
    dateext
    maxsize 2G
}

#test logrotate tanpa menjalankan (debug), ganti -d jadi -f kalau mau menjalankan
sudo logrotate -d /etc/logrotate.d/nginx-goaccess


```