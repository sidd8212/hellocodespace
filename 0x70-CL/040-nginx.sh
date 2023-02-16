
# nginx     

server  {
    listen 80;
    server_name  localhost;
    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }
    location /api {
        proxy_pass http://localhost:3000;
    }
} 

# ngnix.conf https
 server {
    listen 443 ssl;
    server_name localhost;
    ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
    ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }
    location /api {
        proxy_pass http://localhost:3000;
    }
 }

 # ngnix 2way proxy

server {
    listen 80;
    server_name localhost;
    location / {
        proxy_pass http://localhost:3000;
    }
    location /api {
        proxy_pass http://localhost:3000;
    }
}

# ngnix ssh proxy

server {}
