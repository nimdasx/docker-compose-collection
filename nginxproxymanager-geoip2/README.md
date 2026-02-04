```

1. jalankan aktivasi-geoip2.sh

2. tambahkan di custom configuration di proxy host kalau mau blokir akses, contoh hanya boleh diakses dari indonesia :

if ($geoip2_data_country_iso_code != "ID") {
    return 444;
}

```