# Classicmodels Database manipulation

![Test Image 3](/Architecture.png)

## Resumé:

Classicmodels is a database that we are going to use for educational purposes. As we want to list all tables of offices , customers , employes to compare them with other data in the database.

## Architecture:
```
├── app
│   ├── templates
│   │   ├── layout.html
│   │   ├── macros.html
│   │   ├── template.html
│   ├── __init__.py
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
├── db
│   ├── Dockerfile
│   └── init.sql
├── queries
├── docker-compose.yml
└── README.md
```

* app Folder
    * app.py with application
    * Dockerfile build by docker-compose
    * requirements.txt to install modules needed
* db folder
    * Dockerfile build by docker-compose
    * sql with our database
* docker-compose build all
* README.md is reading me

## Database :
MySQL Database Classic models.

```
+-----------------------+
| Tables_Classic_models |
+-----------------------+
| customers             |
| employees             |
| offices               |
| orderdetails          |
| orders                |
| payments              |
| productlines          |
| products              |
+-----------------------+

```
Run on port 3306

## APP.PY:
Web application Flask with:
* Route home '/'
* Route tables '/tables'
* Route Query '/query'
* Get from db with sqlAlchemy
* Templates with Jinja "on going"
* Run on port 5000

## Cloning

Repository:
```
git clone git@github.com:Mohamed-Khalil67/SQL-docker.git

```

## Docker-compose build et unbuild

* docker-compose down -v
* docker-compose up --build

## Mysql connect

* docker exec -it [container database ID] /bin/bash , // going to terminale of the container.
    * Then connect to server mysql : mysql -u newuser -p

## Docker image repository

* image repisotory : https://hub.docker.com/repository/docker/solomoon67/sql_docker

* docker-compose push

## testing units

* healthcheck:
      test: ["CMD","nc","-z","-v","http://localhost:3306"]
      interval: 1m30s
      timeout: 10s
      retries: 3
* Health : unhealthy résultat
...
