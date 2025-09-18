#!/bin/sh
echo "Setting ownership to UID 100..."

# Ubah owner direktori var lib
chown -R 100:100 /tmp/odoox-var-lib-odoo

# Ubah owner file odoo.conf
chown 100:100 /tmp/odoo.conf

# Ubah owner direktori pgadmin
chown -R 5050:5050 /tmp/pgadminx-var-lib-pgadmin

chmod +x /tmp/entrypoint.sh
chmod +x /tmp/wait-for-psql.py

echo "Ownership fix done!"