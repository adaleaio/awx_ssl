#!/bin/bash
openssl req -x509 -newkey rsa:4096 -keyout conf.d/key.pem -out conf.d/cert.pem -days 365 -nodes -subj "/C=US/ST=Texas/L=Dallas/O=awx/OU=awx/CN=localhost"
docker stop awx_ssl
docker rm awx_ssl
docker build . -t adaleaio/awx_ssl_proxy
docker run -d --restart unless-stopped --link awx_web --name awx_ssl -p 443:443 adaleaio/awx_ssl_proxy
