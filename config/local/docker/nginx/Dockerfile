FROM nginx:1.11.10-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Fix configuration
ADD config/local/docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Set volume
VOLUME /usr/share/nginx/html