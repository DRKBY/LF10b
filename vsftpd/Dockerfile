# Dockerfile für vsftpd FTP-Server basierend auf Debian
FROM debian:latest

RUN cat /etc/os-release

# Installiere vsftpd und apache2-utils
RUN apt-get update && apt-get install -y vsftpd apache2-utils

# Erstelle das Verzeichnis und setze die Berechtigungen
RUN mkdir -p /etc/vsftpd && chmod 755 /etc/vsftpd

# Benutzer hinzufügen
RUN echo -e "ftp_password" | htpasswd -ci /etc/vsftpd/virtual_users.txt ftpuser

# Kopiere vsftpd-Konfigurationsdatei
COPY vsftpd.conf /etc/vsftpd.conf

EXPOSE 20 21 21100-21110

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]