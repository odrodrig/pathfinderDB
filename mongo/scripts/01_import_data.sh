#!/bin/bash
echo "Starting database import"

mongo --eval "printjson(db = db.getSiblingDB('pfDB'))"
echo "Using pfDB"

FILES=/data/items/*

for f in $FILES
do 
    echo $f 
    mongoimport --db pfDB --collection items $f
done