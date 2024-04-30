# ipinfo
查询ip信息

## 部署

```docker run -d --name ipinfo -p 8080:80 laojun/ipinfo:latest```

## 使用方法

```curl <server_host>:8080/ip``` 仅查询客户端ip

```curl < server_host >:8080/ipinfo```  如果客户端IP为公网ip，则返回地址位置及其他信息