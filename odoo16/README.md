# odoo

## install on linux
1. docker compose up -d
2. docker compose down
3. sudo chmod 777 etcodoo
4. sudo chmod 777 varlibodoo
5. docker compose up -d
6. open http://localhost:6916/

## install on windows
1. docker compose up -d
2. open http://localhost:6916/

## enterprise
1. git clone git@github.com:odoo/enterprise.git
2. sudo vim etcodoo/odoo.conf  
`addons_path = /mnt/extra-addons, /enterprise`
3. vim docker-compose.yml
tambahkan ini di bagian volume  
`- ./enterprise:/enterprise`
4. docker compose up -d
5. aktivkan develop mode, update app dan update app list

## catatan
per 12 mei 2023, ada error sewaktu menggunakan postgres:15-alphine, ganti postgres:14 berhasil  
`Database creation error: realtion "ir_model" dost not exist LINE 1:SELECT *,name->>'en_US' AS name FROM ir_model WHERE satate = ...^`
