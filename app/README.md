# Flask on Docker

This sample application connects to an external PostgreSQL database.

The database connection information is specified via environment variables.

Clone this repo then:

```
docker build -t docker-flask-sample .
docker run -it --env DBPASS="<PASSWORD>" --env DBHOST="<SERVER_HOST_NAME>" --env DBUSER="<USERNAME>" --env DBNAME="<DATABASE_NAME>" -p 5000:5000 docker-flask-sample`
```