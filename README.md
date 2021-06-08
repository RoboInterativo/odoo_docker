# odoo_docker

custom odoo crm docker image

# Создание сети
docker create network my-network

# Сборка образа

docker build -t myodoo .


# Инициализация БД
docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo  -e POSTGRES_DB=postgres --net=my-network  -h db --name db   postgres:1

#Инициализация модулей ODOO

docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extr>
-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  init module  icash

# Запуск Odoo

docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extr>
-p 8069 -p 8072 --name odoo -h odoo  -it myodoo
