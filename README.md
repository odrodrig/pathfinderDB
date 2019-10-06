# Pathfinder database 

## Elasticsearch docker container
To create the elasticsearch database, run the following command:
```
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" odrodrig/pf_db:0.1.0
```
