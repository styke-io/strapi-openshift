#!/usr/bin/env bash

# Postgres
yasha source/strapi.template.yaml -o strapi-postgres.yaml -v config/postgres.yaml

# mongo
# yasha source/strapi.template.yaml -o strapi-mongo.yaml -v config/mongo.yaml

# docker build ./ -t styke/strapi-openshift
# docker push styke/strapi-openshift
