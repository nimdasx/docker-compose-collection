# docker-compose-collection
Docker Compose Collection / Koleksi Docker Compose  
Silahkan kopi yang dibutuhkan

## Catatan

Jalankan docker dengan perintah  
`docker compose up -d`

stop docker dengan perintah  
`docker compose down`

menjalankan tanpa ke background  
`docker compose up`
control+x untuk menghentikan

cek log   
`docker logs -f <nama container>`

masuk ke container  
`docker exec -it <nama kontainer> bash`

eksekusi perintah di container tanpa masuk ke container
`docker exec -it <nama kontainer> <perintah>`