#!/bin/bash

if [ "$1" = "build_generator" ]; then
    docker build -t generator ./generator 

elif [ "$1" = "run_generator" ]; then
    docker run -v "$(pwd)/data:/data" generator 

elif [ "$1" = "create_local_data" ]; then
    python generator/generate.py local_data

elif [ "$1" = "build_reporter" ]; then
    docker build -t reporter ./reporter

elif [ "$1" = "run_reporter" ]; then
    docker run -v "$(pwd)/data:/data" reporter

elif [ "$1" = "structure" ]; then
    ls -R

elif [ "$1" = "clear_data" ]; then
    docker run -v "$(pwd)/data:/data" alpine rm -f /data/data.csv /data/report.html

elif [ "$1" = "inside_generator" ]; then
    docker run -v "$(pwd)/data:/data" generator ls /data

elif [ "$1" = "inside_reporter" ]; then
    docker run -v "$(pwd)/data:/data" reporter ls /data

fi







 



