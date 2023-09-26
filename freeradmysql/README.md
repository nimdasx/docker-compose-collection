# FreeRadMysql

Freeradius dan Mysql

catatan how to run, stop, enter container disini :  
https://github.com/nimdasx/docker-compose-collection/blob/main/README.md

## Instalasi

1. download/kopi folder freeradmysql ini, dan untuk keamanan ganti password mysql yang ada di :  
    - docker-compose.yml
    - freeradius/mods-enabled/sql

2. buat database dengan nama `radius`, jangan lupa jalankan dulu containernya  

3. import schema.sql ke database  

jika mau menghilangkan debugging, comment tulisan `command: freeradius -X` di file `docker-compose.yml`

## How to Check Auth

1. buat user di database  
    `insert into radcheck (username,attribute,op,value) values("kira", "Cleartext-Password", ":=", "yamato");`

2. jalankan perintah ini di container freeradius  
    `radtest kira yamato 127.0.0.1 0 testing123`

jika hasilnya `Received Access-Accept` artinya auth via db berhasil  

## Source
https://wiki.freeradius.org/guide/SQL-HOWTO-for-freeradius-3.x-on-Debian-Ubuntu  
https://hub.docker.com/r/freeradius/freeradius-server