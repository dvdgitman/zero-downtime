FROM nginx:alpine
COPY devops_odyssey.html /usr/share/nginx/html/index.html
EXPOSE 80
