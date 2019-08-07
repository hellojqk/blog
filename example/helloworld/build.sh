#! /bin/bash
docker rmi $(docker image ls --filter="dangling=true" --format="{{.ID}}")
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o ./hello ./main.go
docker build -t hellojqk/helloworld:latest .
# docker login -u hellojqk
docker push hellojqk/helloworld:latest
# rm ./hello