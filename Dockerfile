FROM nginx:latest

COPY website webfile.html 

VOLUME website/webfile.html
