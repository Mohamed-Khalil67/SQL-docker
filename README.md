# Classicmodels Database manipulation

## Overview project schematic

![Image 0](/sql-project.png)

![Image 1](/Architecture.png)

## Interface:

![Image 2](/modelDataView.png)

## Brief explanation of the database:

Classicmodels is a database that we are going to use for educational purposes. 

As we want to list all tables of offices , customers , employes to compare them with other data in the database.

## Architecture:
```
├── app
│   ├── templates
│   │   ├── layout.html
│   │   ├── macros.html
│   │   └── template.html
│   ├── __init__.py
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
├── db
│   ├── Dockerfile
│   └── init.sql
├── docker-compose.yml
├── run_docker.sh
└── README.md

```

* app Folder
    * app.py with application
    * Dockerfile build by docker-compose
    * requirements.txt to install modules needed
* db folder
    * Dockerfile build by docker-compose
    * sql with our database
* nginx folder
    * nginx.conf for configuartion of the server
* docker-compose build all
* README.md is reading me
* run_docker.sh

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

## Nginx.conf :

* We query on port 80 on our localhost, which is sent on port 8080 on our sql-network to nginx (nginx is listening on port 8080)
* nginx transfers this request to port 5000 on the sql-network (which is where Gunicorn will recieve the request)
* Gunicorn passes this request to Flask

## Github cloning :

Repository:
```
git clone git@github.com:Mohamed-Khalil67/SQL-docker.git
```

## Docker-compose build et unbuild :

* docker-compose down -v
* docker-compose up --build

## Mysql connect :

* docker exec -it [container database ID] /bin/bash , // going to terminale of the container.
    * Then connect to server mysql : mysql -u newuser -p

## Docker image repository :

* image repisotory : https://hub.docker.com/r/solomoon67/docker-sql_app

* Steps :
    * docker-compose build 
    * docker push solomoon67/docker-sql_app:latest

## testing units :

* healthcheck:
      test: ["CMD","nc","-z","-v","http://localhost:3306"]
      interval: 1m30s
      timeout: 10s
      retries: 3
* Health : unhealthy résultat

## heroku:

Heroku.yml creation is needed

* heroku commands:
    * heroku login , (login with accound )

    * heroku addons:create cleardb:standard-25 --app docker-sql-flask-nginx , ( database creation )

    --> problem :  credit card needed

    * heroku config --app app_name , ( getting the URL of the database)

    --> need the addon for mysql pas postgresql

    * git add . , commit , push .
    * heroku git:remote -a docker-sql-flask-nginx
    * git push heroku master.

* heroku container commands:

    * heroku container:login

    * heroku container:push --recursive

    * git add . , commit 

    * git push herko master

...
