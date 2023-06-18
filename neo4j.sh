#!/bin/bash

DATA_FOLDER=$HOME/neo4j/data
LOGS_FOLDER=$HOME/neo4j/logs

echo $DATA_FOLDER
echo $LOGS_FOLDER

if [[ ! -d $DATA_FOLDER ]]
then
    mkdir -p $DATA_FOLDER
fi

if [[ ! -d $LOGS_FOLDER ]]
then
    mkdir -p $LOGS_FOLDER
fi

docker run \
        --detach \
        --privileged \
        --name neo4j \
        --publish 7474:7474 \
        --publish 7687:7687 \
        --volume $DATA_FOLDER:/data:rw \
        --volume $LOGS_FOLDER:/logs:rw \
        --env NEO4J_server_memory_pagecache_size=4G \
        neo4j
