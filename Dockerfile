FROM mongo:4.1
VOLUME [ "/data/db" ]
RUN mkdir /data/items/
COPY ./items/* /data/items/
COPY ./scripts/import_data.sh /data/

