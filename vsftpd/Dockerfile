# Dockerfile für vsftpd FTP-Server
FROM fauria/vsftpd

# Installiere apache2-utils für htpasswd
RUN apt-get update && apt-get install -y apache2-utils

# Benutzer hinzufügen
RUN echo -e "ftp_password" | htpasswd -ci /etc/vsftpd/virtual_users.txt ftpuser

EXPOSE 20 21 21100-21110

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]
