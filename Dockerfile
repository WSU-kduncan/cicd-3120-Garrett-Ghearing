FROM nginx

COPY . /website/:/usr/share/nginx/html:ro

CMD ["nginx", "/usr/share/nginx/html:ro"]
