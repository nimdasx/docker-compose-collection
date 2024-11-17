```
odoo database admin password
123

pgadminx/pgpass gak jalan

docker compose down
docker volume rm odoo18_pgadminx-var-lib-pgadmin
docker volume rm odoo18_odoox-var-lib-odoo
docker volume rm odoo18_psqlx-var-lib-postgresql-data
docker compose up -d
docker compose logs -f

http://localhost:10022/web/database/manager
http://localhost:10024/login?next=/

```