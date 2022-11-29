FROM nginx

COPY webfile.html:/usr/share/nginx/html:ro

CMD ["nginx", "/usr/share/nginx/html:ro"]
