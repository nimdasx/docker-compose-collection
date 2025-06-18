#!/bin/sh
echo "fix"

# Ubah owner direktori pgadmin
chown -R 5050:5050 /tmp/pgadminx-var-lib-pgadmin

echo "fix done!"
