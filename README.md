# nginx load balancer
simple nginx load balancer load balancer on top of [hello-world-expressjs-docker](https://github.com/waleedsamy/hello-world-expressjs-docker), use [confd](ttps://github.com/kelseyhightower/confd/) to auto add or remove new instance of api container.


[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/waleedsamy/nginx-confd-consul-docker/)

* run
 ```
 docker run -d -e "CONSUL_NODE=$CONSUL_IP:8500" -p $HOST_IP:80:80 waleedsamy/nginx-confd-consul-docker
 ```


* resources:
 * https://github.com/muenchhausen/tomcat-confd
 * https://github.com/yaronr/dockerfile/blob/master/haproxy-confd
