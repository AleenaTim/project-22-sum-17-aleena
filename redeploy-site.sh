#!/bin/bash

cd /root/project-22-sum-17-aleena

git fetch && git reset origin/main --hard

source "/root/project-22-sum-17-aleena/python3-virtualenv/bin/activate"

pip install -r requirements.txt

RUN="flask run --host=0.0.0.0"

systemctl daemon-reload

systemctl restart myportfolio