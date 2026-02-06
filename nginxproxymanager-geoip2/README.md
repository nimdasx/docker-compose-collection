```

#1
install.sh

#contoh blockir di advance config proxy host

##hanya boleh diakses dari indonesia
if ($geoip2_data_country_iso_code != "ID") {
    return 444;
}

##dengan pengecualian
set $allow_access 0;
if ($geoip2_data_country_iso_code = "ID") {
    set $allow_access 1;
}
if ($remote_addr = "203.0.113.10") {
    set $allow_access 1;
}
if ($remote_addr = "198.51.100.25") {
    set $allow_access 1;
}
if ($allow_access = 0) {
    return 444;
}

```