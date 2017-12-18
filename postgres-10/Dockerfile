FROM postgres:10
MAINTAINER borin jgrekov@gmail.com

RUN sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && locale-gen

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8

RUN apt-get update && \
 apt-get install -y software-properties-common postgis

RUN echo "psql -U \$POSTGRES_USER -d \$POSTGRES_USER -c \"CREATE EXTENSION postgis\"" > /docker-entrypoint-initdb.d/postgis.sh && \
 chmod +x /docker-entrypoint-initdb.d/postgis.sh
