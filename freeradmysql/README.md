# FreeRadMysql

Freeradius dan Mysql

## Instalasi

download/kopi folder freeradmysql ini  

untuk keamanan, ganti dulu password mysql yang ada di :  
- docker-compose.yml
- freeradius/mods-enabled/sql

buat database dengan nama radius  

import schema.sql ke database radius  

## Catatan

jalankan docker dengan perintah  
```
docker compose up -d
```

stop docker dengan perintah  
```
docker compose down
```

menjalankan tanpa ke background  
```
docker compose up
```

cek log   
```
docker logs -f freeradmysql-freeradius-1
```

jika mau menghilangkan debugging, comment tulisan *command: freeradius -X* di file docker-compose.yml

## How to Check Request 

buat user di database  
```
insert into radcheck (username,attribute,op,value) values("kira", "Cleartext-Password", ":=", "yamato");
```

masuk ke container  
```
docker exec -it freeradmysql-freeradius-1 bash
```

jalankan perintah  
```
radtest kira yamato 127.0.0.1 0 testing123
```

jika hasilnya Received Access-Accept artinya auth via db berhasil

## Source
https://wiki.freeradius.org/guide/SQL-HOWTO-for-freeradius-3.x-on-Debian-Ubuntu  
https://hub.docker.com/r/freeradius/freeradius-server