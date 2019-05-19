#!/bin/bash
echo "Starting replica set"

mongo --eval 'rs.initiate()'

sleep 10

mongo --eval 'rs.status()'