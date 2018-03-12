#!/bin/bash

docker build -t test_ssh .
docker run -d -p 32768:22 --name test_sshfirst test_ssh
docker run -d -p 32769:22 --name test_sshsecond test_ssh
docker cp /home/docker_root/.ssh/id_rsa test_sshfirst:/home/docker_root/.ssh
docker cp /home/docker_root/.ssh/id_rsa test_sshsecond:/home/docker_root/.ssh