#!/bin/bash

docker stop {{.Service}}-{{.Major}}
docker rm {{.Service}}-{{.Major}}
docker run -d -p 51206:8080 --restart="always" --name {{.Service}}-{{.Major}}  -v /etc/nginx/certs:/etc/nginx/certs -v /var/log/nginx:/var/log/nginx goal043/{{.Service}}:{{.Id}}
