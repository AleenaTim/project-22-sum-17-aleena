#!/bin/bash

cd /root/project-22-sum-17-aleena

git fetch && git reset origin/main --hard

docker compose -f docker-compose.prod.yml down

docker compose -f docker-compose.prod.yml up -d --build
