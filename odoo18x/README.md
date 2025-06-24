```
install
1. kopi kabeh file sik neng jero folder iki ke folder ntah terserah
2. jalankan docker compose up -d
3. selesai, tinggal buka browser, odoo siap jalan

catatan

#update modul odoo_bud di database didos
docker compose run --rm  odoox -u odoo_bud -d didos --stop-after-init

#update all modul di database didos
docker compose run --rm  odoox -u all -d didos --stop-after-init

#update all modul di database didos
docker exec -it odoo-container-name ./odoo-bin -u all -d didos


```