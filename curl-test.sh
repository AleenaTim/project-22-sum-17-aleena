#!/bin/bash

curl -X POST http://127.0.0.1:5000/api/timeline_post -d 'name=aleena&email=aleenatim@gmail.com&content=test'

curl http://127.0.0.1:5000/api/timeline_post