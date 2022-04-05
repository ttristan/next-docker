# https://codewithhugo.com/docker-compose-local-https/


source scripts/load-env.sh

#! /bin/bash
echo """
==================================================
  Creating certificate
==================================================
"""
mkcert -install
mkcert $SERVER_NAME

echo """
==================================================
  Moving certificates to ./config/docker/nginx/certs
==================================================
"""

mv ./$SERVER_NAME.pem ./config/docker/nginx/certs/$SERVER_NAME.crt
mv ./$SERVER_NAME-key.pem ./config/docker/nginx/certs/$SERVER_NAME.key

echo """
==================================================
  Add the following to /etc/hosts file:
  127.0.0.1 $SERVER_NAME
==================================================
"""