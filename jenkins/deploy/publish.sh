#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth/.auth)
export TAG=$(sed -n '2p' /tmp/.auth/.auth)
export PASS=$(sed -n '3p' /tmp/.auth/.auth)

docker login -u varelajuanmartin -p $PASS

cd ~/maven && \
   docker compose up -d