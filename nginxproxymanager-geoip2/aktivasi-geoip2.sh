docker compose up -d

sudo mkdir -p data/nginx/custom
sudo wget -P data/nginx/custom https://github.com/nimdasx/docker-compose-collection/raw/refs/heads/main/nginxproxymanager-geoip2/data/nginx/custom/http_top.conf
sudo wget -P data/nginx/custom https://github.com/nimdasx/docker-compose-collection/raw/refs/heads/main/nginxproxymanager-geoip2/data/nginx/custom/root_top.conf
sudo wget -P data https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-Country.mmdb
sudo wget -P data https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-City.mmdb

docker compose down
docker compose up -d