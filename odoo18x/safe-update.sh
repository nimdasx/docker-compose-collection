#Destroy container lama (stop + remove tanpa confirm)
docker compose rm -s -f odoox

#pull modul
git -C odoox/addons/enterprise/ pull
git -C odoox/addons/design_themes/ pull

#Update modul
docker compose run --rm odoox -u all -d namadb --stop-after-init

#Recreate & start
docker compose up -d