# FreeRadMysql

Freeradius dan Mysql

Catatan how to run, stop, enter container, dll disini :  
https://github.com/nimdasx/docker-compose-collection/blob/main/README.md

## Instalasi

1. Download/kopi folder `freeradmysql` ini, dan untuk keamanan ganti password mysql yang ada di :  
    - docker-compose.yml
    - freeradius/mods-enabled/sql

2. Buat database dengan nama `radius` dan import `schema.sql` ke database. Jangan lupa jalankan dulu containernya  

Jika mau menghilangkan debugging, comment tulisan `command: freeradius -X` di file `docker-compose.yml`

## How to Check Auth

1. Buat user di database  
    `insert into radcheck (username,attribute,op,value) values("kira", "Cleartext-Password", ":=", "yamato");`

2. Jalankan perintah `radtest` ini di container freeradius  
    `radtest kira yamato 127.0.0.1 0 testing123`

Jika hasilnya `Received Access-Accept` artinya auth via db berhasil  

## Source
https://wiki.freeradius.org/guide/SQL-HOWTO-for-freeradius-3.x-on-Debian-Ubuntu  
https://hub.docker.com/r/freeradius/freeradius-server