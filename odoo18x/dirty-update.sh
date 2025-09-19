git -C odoox/addons/enterprise/ pull
git -C odoox/addons/design_themes/ pull
docker compose pull
docker compose run --rm  odoox -u all -d namadb --stop-after-init
#docker compose exec odoox odoo -u all -d namadb --stop-after-init
docker compose restart odoox
#docker compose logs -f -n 10