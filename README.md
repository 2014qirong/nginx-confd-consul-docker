# nginx load balancer
simple nginx load balancer load balancer on top of [hello-world-expressjs-docker](https://github.com/waleedsamy/hello-world-expressjs-docker), use [confd](ttps://github.com/kelseyhightower/confd/) to auto add or remove new instance of api container.


[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/waleedsamy/nginx-confd-consul-docker/)

* run
 ```
 # cause this run in coreos, you will have no trouble in using etcd
 docker run -d -e "ETCD_NODE=$COREOS_PRIVATE_IPV4:2379" -p $COREOS_PUBLIC_IPV4:80:80 waleedsamy/nginx-confd-consul-docker:etcd
 ```


* resources:
 * https://github.com/muenchhausen/tomcat-confd
 * https://github.com/yaronr/dockerfile/blob/master/haproxy-confd
