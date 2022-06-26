`docker run --name my_postgres -p 5435:5435 -e POSTGRES_USER=user -e PGUSER=user -e POSTGRES_PASSWORD=pw postgres:latest`

`docker exec -it my_postgres bash`

`psql -U user`