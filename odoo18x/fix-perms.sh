#!/bin/sh
echo "Setting ownership to UID 100..."

# Ubah owner direktori var lib
chown -R 100:100 /tmp/satu

# Ubah owner file odoo.conf
chown 100:100 /tmp/dua

# Ubah owner direktori pgadmin
chown -R 5050:5050 /tmp/tiga

echo "Ownership fix done!"
