docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo  -e POSTGRES_DB=postgres --net=my-network  -h db --name db   postgres:10
