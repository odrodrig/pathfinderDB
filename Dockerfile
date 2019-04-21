FROM mongo:4.1
RUN mkdir /data/items/
COPY ./items/* /data/items/.
COPY ./scripts/import_data.sh /data/.
RUN . /data/import_data.sh
RUN rm -rf /data/items/

