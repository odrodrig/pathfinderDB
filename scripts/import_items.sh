#!/bin/bash

FILES=../items/*

if ! curl -s http://127.0.0.1:9200/_cat/indices?v | grep -q "item"; then

    echo 'Item index does not exist. Creating the item index'
    curl -X PUT http://127.0.0.1:9200/item?pretty
fi 

X=0
for f in $FILES
do 
    echo $f 
    curl -H "Content-Type: application/json" -d @$f -X POST http://127.0.0.1:9200/item/_doc/$X?pretty
    X=$((X+1))
done