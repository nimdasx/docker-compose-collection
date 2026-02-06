wget https://github.com/nimdasx/docker-compose-collection/raw/refs/heads/main/nginxproxymanager-geoip2/docker-compose.yml
mkdir -p data/nginx/custom
wget -P data/nginx/custom https://github.com/nimdasx/docker-compose-collection/raw/refs/heads/main/nginxproxymanager-geoip2/data/nginx/custom/http_top.conf
wget -P data/nginx/custom https://github.com/nimdasx/docker-compose-collection/raw/refs/heads/main/nginxproxymanager-geoip2/data/nginx/custom/root_top.conf
#wget -P data https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-Country.mmdb
#wget -P data https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-City.mmdb
docker compose up -d