# Flask on Docker with external PostgreSQL database

A simple Python Flask application running in a Docker container and connecting via SQLAlchemy to a PostgreSQL database.

The database connection information is specified via environment variables `DBHOST`, `DBPASS`, `DBUSER`, and `DBNAME`. This app always uses the default PostgreSQL port.

There are two [releases](https://github.com/Azure-Samples/docker-flask-postgres/releases) of this app. Version [`0.1-initialapp`](https://github.com/Azure-Samples/docker-flask-postgres/releases/tag/0.1-initialapp) demonstrates a complete app, whereas version [`0.2-migration`](https://github.com/Azure-Samples/docker-flask-postgres/releases/tag/0.2-migration) introduces model changes and a database migration.

Download one of the releases then build and run in Docker locally via:

```
docker build -t docker-flask-sample .
docker run -it --env DBPASS="<PASSWORD>" --env DBHOST="<SERVER_HOST_NAME>" --env DBUSER="<USERNAME>" --env DBNAME="<DATABASE_NAME>" -p 5000:5000 docker-flask-sample
```
The app can be reached in your browser at `http://127.0.0.1:5000`.

# Contributing

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
