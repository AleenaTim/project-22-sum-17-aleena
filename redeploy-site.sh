#!/bin/bash

tmux kill-session

cd /root/project-22-sum-17-aleena

git fetch && git reset origin/main --hard

source "/root/project-22-sum-17-aleena/python3-virtualenv/bin/activate"

pip install -r requirements.txt

NEW_TMUX="redeploy"

RUN="flask run --host=0.0.0.0"

tmux new-session -d -s "$NEW_TMUX" "$RUN"