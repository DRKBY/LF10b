# BIND9 DNS Server
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc

# Konfigurationsdateien kopieren (anpassen)
COPY named.conf /etc/bind/named.conf
COPY db.ehh.de /etc/bind/db.ehh.de

EXPOSE 53/tcp 53/udp

CMD ["named", "-g"]

# Nginx Web Server
FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

