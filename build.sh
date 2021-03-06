#!/usr/bin/env bash

gradle clean -x test build

docker build --no-cache -t xingdaba/xingdaba-config-server .

docker tag xingdaba/xingdaba-config-server hub.c.163.com/riyuexingchenace/xingdaba/xingdaba-config-server:latest

docker push hub.c.163.com/riyuexingchenace/xingdaba/xingdaba-config-server:latest
