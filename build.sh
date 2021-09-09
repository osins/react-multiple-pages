#!/bin/bash
set -exu

git pull

docker pull uhub.service.ucloud.cn/humanrisk/nextjs.deps

tag="uhub.service.ucloud.cn/humanrisk/01-sso-front-v1"
ver=$tag":"$(date '+%Y%m%d%H%M%S')
echo 'tag name:'$ver
echo 'latest tag:'$tag:latest

docker build -t $ver .
docker push $ver
docker tag $ver $tag:latest
docker push $tag:latest

