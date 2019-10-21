# docker-centos-nginx
Docker with CentOS 8, systemd and nginx

# Pull

```
docker pull kokspflanze/centos-nginx
```

# Running Container

```
docker run -v /opt/docker/docker_test/nginx:/etc/nginx/conf.d --restart=always -d -it kokspflanze/centos-nginx 
```

# Attach Container

```
docker exec kokspflanze/centos-nginx /bin/bash
```
