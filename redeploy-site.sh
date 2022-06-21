#!/bin/bash

tmux kill-session

cd project-22-sum-17-aleena-emily-zareen/

git fetch && git reset origin/main --hard

source python3-virtualenv/bin/activate

pip install -r requirements.txt

tmux new

flask run --host=0.0.0.0