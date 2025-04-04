#!/bin/bash

# Start etcd in the background
etcd --listen-client-urls http://localhost:2379 \
     --advertise-client-urls http://localhost:2379 &

# Give etcd a few seconds to start
sleep 5

# Start Milvus standalone
milvus run standalone
