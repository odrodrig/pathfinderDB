#!/bin/bash

FILES=/data/items/*
# FILES=../items/*

# docker cp ../items f0818ecc9a09:/data/.


for f in $FILES
do 
    echo $f 
    mongoimport --db pfDB --collection items $f
done