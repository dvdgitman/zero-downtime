FROM nginx:alpine
COPY zero-downtime.html /usr/share/nginx/html/index.html
EXPOSE 80
