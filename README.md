# odoo_docker

```bash
custom odoo crm docker image
```
# Создание сети

```bash
 docker create network my-network
```
# Сборка образа

```bash
docker build -t myodoo .
```

# Инициализация БД
```bash
docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo  -e POSTGRES_DB=postgres --net=my-network  -h db --name db   postgres:1
```


# Инициализация модулей ODOO

```bash
docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  init translation
```


```bash
export modules=`ls extra-addons `
export modules_comma=`echo  $modules |sed 's/ /,/g'
docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons \
-p 8069 -p 8072 --name odoo -h odoo  -it myodoo  init module  $modules_comma
```

# Запуск Odoo

```bash
docker run  -v `pwd`/config:/etc/odoo --rm --net=my-network  -v `pwd`/extra-addons/:/mnt/extra-addons  \
-p 8069 -p 8072 --name odoo -h odoo  -itd myodoo
```
