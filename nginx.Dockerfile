FROM valian/docker-nginx-auto-ssl

COPY 0.nginx.conf /usr/local/openresty/nginx/conf/server-proxy.conf

RUN cat /usr/local/openresty/nginx/conf/server-proxy.conf