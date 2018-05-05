FROM strapi/strapi:latest

RUN npm install strapi@alpha -g

# Fix permission problems
RUN chmod 777 .

RUN mkdir tmp
RUN chmod 777 tmp

RUN mkdir /.npm
RUN chmod 777 /.npm

# Use OpenShift environment variables for strapi database
RUN sed -i 's/DATABASE_HOST/POSTGRESQL_SERVICE_HOST/g' strapi.sh
RUN sed -i 's/DATABASE_PORT/POSTGRESQL_SERVICE_PORT/g' strapi.sh
