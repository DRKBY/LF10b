# Dockerfile für vsftpd FTP-Server
FROM fauria/vsftpd

# Benutzer hinzufügen
RUN echo -e "ftpuser\nftp_password" | /usr/bin/htpasswd -ci /etc/vsftpd/virtual_users.txt ftpuser

EXPOSE 20 21 21100-21110

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]