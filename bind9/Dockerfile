# Dockerfile für BIND9 DNS-Server
FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc && \
    rm -rf /var/lib/apt/lists/*

# Konfigurationsdateien kopieren
COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY db.ehh.de /etc/bind/db.ehh.de
COPY db.0.168.192.in-addr.arpa /etc/bind/db.0.168.192.in-addr.arpa

EXPOSE 53/udp 53/tcp

CMD ["named", "-g", "-4"]