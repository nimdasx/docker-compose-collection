```
#generate password
#masuk ke container dulu
mosquitto_passwd /mosquitto/config/gundulpacul dev

#test publisher
mosquitto_pub -h 202.162.32.27 -t test -m "hallo" -u dev -P xxx

#test subscriber
mosquitto_sub -h 202.162.32.27 -t test -u dev -P xxx
```