```
init.sh

setting nginx proxy manager
domain name : cryptpad.x.x, sandbox-cryptpad.x.x (2 domain dalam 1 proxy host)
forward ip : 172.17.0.1
forward port : 3000
custom location
    location : /cryptpad_websocket
    forward ip : 172.17.0.1
    forward port : 3003

```