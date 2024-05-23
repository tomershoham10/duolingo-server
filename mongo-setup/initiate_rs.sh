#!/bin/bash

echo "Starting mongo..."

IS_WORKING=false

usr/bin/mongod --bind_ip_all --replSet rs0 &

while ! $IS_WORKING; do
  {
    mongo --eval "rs.initiate({_id:'rs0', version: 1, members: [{_id: 0, host:'localhost:27017'}]})" &&
    IS_WORKING=true
  } || {
    IS_WORKING=false
    sleep 2
    echo "Try Again"
  }
done

echo "Replica Set Has Been Initialized..."

while true; do sleep 1; done