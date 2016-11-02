# docker-centos-nginx
Docker with CentOS 7, systemd and nginx

# Pull

```
docker pull kokspflanze/centos-nginx
```

# Running Container

```
docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /opt/docker/docker_test/nginx:/etc/nginx/conf.d  --restart=always -d -it kokspflanze/centos-nginx 
```