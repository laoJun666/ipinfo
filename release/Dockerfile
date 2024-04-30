FROM openresty/openresty:1.21.4.1-0-focal

RUN opm install ledgetech/lua-resty-http

# 替换默认的 Nginx 配置文件
COPY nginx/config/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# 暴露端口
EXPOSE 80