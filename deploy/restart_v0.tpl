#!/bin/bash

docker stop {{.ServiceMajor}}
docker rm {{.ServiceMajor}}
docker run -d -p 51206:8080 --restart="always" --name {{.ServiceMajor}}  -v /etc/nginx/certs:/etc/nginx/certs -v /var/log/nginx:/var/log/nginx goal043/{{.Service}}:{{.Version}}
