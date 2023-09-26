# docker-compose-collection
Docker Compose Collection / Koleksi Docker Compose  
Silahkan kopi yang dibutuhkan

## Catatan

Jalankan container dengan perintah  
`docker compose up -d`  

stop container dengan perintah  
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

kopi file dari dalam kontainer keluar  
`docker cp <nama kontainer>:<path folder/file didalam kontainer> <path folder/file diluar>`  

kopi file dari luar ke dalam kontainer  
`docker cp <path folder/file diluar> <nama kontainer>:<path folder/file didalam kontainer>`  