# Dockerfile für Nginx Webserver
FROM nginx:alpine

# Entferne die Standardkonfiguration
RUN rm /etc/nginx/conf.d/default.conf

# Kopiere die eigene Konfigurationsdatei
COPY nginx.conf /etc/nginx/conf.d/

# Kopiere die Webinhalte
COPY html/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
