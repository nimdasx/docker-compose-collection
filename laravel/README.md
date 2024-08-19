# setup pertama kali

```
#run docker
docker compose up -d

#create project laravel di dalam container web
./ctweb.sh composer create-project laravel/laravel .

#fix permission
chown 1000 web/storage/framework/cache
chown 1000 web/storage/framework/sessions
chown 1000 web/storage/framework/testing
chown 1000 web/storage/framework/views
chown 1000 web/storage/logs
chown 1000 web/database/database.sqlite

#koneksi ke database
vim web/.env
DB_CONNECTION=mysql
DB_HOST=mariadb
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=sdFD8uhqCXPf0

#migrate
./ctweb.sh php artisan migrate

#check browse
http://localhost:10020/
```
