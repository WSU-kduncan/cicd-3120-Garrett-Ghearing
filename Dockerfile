FROM nginx:latest



COPY ./website/webfile.html /usr/share/nginx/html/index.html 

