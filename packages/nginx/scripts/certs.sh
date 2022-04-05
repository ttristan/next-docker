# https://codewithhugo.com/docker-compose-local-https/

cd ../..
source scripts/load-env.sh

if test -f ./packages/nginx/certs/$SERVER_NAME.crt; then
  # already created
  exit 0
fi

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
  Moving certificates to ./packages/nginx/certs
==================================================
"""

mv ./$SERVER_NAME.pem ./packages/nginx/certs/$SERVER_NAME.crt
mv ./$SERVER_NAME-key.pem ./packages/nginx/certs/$SERVER_NAME.key

echo """
==================================================
  Add the following to /etc/hosts file:
  127.0.0.1 $SERVER_NAME
==================================================
"""