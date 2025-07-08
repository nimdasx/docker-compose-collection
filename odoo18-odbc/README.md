```

ini odoo sudah ada driver odbc tanpa build ulang, ambil dari hub nimdasx/odoo18-odbc

odoo database manager
http://localhost:10022/web/database/manager

pgadmin
http://localhost:10024/login?next=/browser/


#update modul dan restart setelah perubahan coding py dan xml
docker compose exec odoox odoo -u <nama modul> -d <nama db> --stop-after-init && docker compose restart odoox && docker compose logs -f odoox

#update modul tanpa restart setelah perubahan xml, kalo ada perubahan coding py harus restart
docker compose exec odoox odoo -u <nama modul> -d <nama db> --stop-after-init && docker compose logs -f odoox
```