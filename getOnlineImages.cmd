docker pull node:20.6-alpine3.17
docker save -o node206alpine.tar node:20.6-alpine3.17

docker pull node:20.6.1
docker save -o node2061.tar node:20.6.1

docker pull mongo:5.0.11
docker save -o mongo.tar mongo:5.0.11

docker pull redis:latest
docker save -o redis.tar redis:latest

docker pull python:3.9-slim
docker save -o python.tar python:3.9-slim

docker pull minio/minio
docker save -o minio.tar minio/minio
