#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Docker Installation";
echo "-------------------------------------------";

sudo apt-get install -y \
  docker.io \
  docker-compose \
  ;

sudo usermod -a -G docker $USER

echo "-------------------------------------------";
echo "Docker Installation Complete";
echo "-------------------------------------------";