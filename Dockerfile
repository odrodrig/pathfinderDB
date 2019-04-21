FROM mongo:4.1
COPY ./items/* /data/items/.
COPY ./scripts/import_data.sh /data/.
RUN /data/import_data.sh
