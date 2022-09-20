# kube-nexus-dockerhub
Kubernetes yaml configuration files for nexus using docker hub image


This configuration has been tested on "rancher desktop"
- kubernetes <= 1.24.4
- build-in traefik disabled
- ingress traefik (v2.8) installed via "kube-traefik-ingress-controller" code repository
- no https configured


This configuration use:
- nginx v1.23.1-alpine
- nexus v3:3.41.1


You need to add an entry in /etc/hosts to make working the ingress properly with "rancher desktop":
- nexus.kube.local 127.0.0.1


You need to set a right path in /nexus/nexus-PersistentVolume :
- path: "/<path>/GitHub/kube-nexus-dockerhub/volume/"


A docker local repository need to be created & linked to port 8082

A user dedicated to manage docker repository need to be created too
