# Classicmodels Database manipulation

## Presentation:

Classicmodels is a database that we are going to use for educational purposes. As we want to list all tables of offices , customers , employes to compare them with other data in the database.

### APP:
Web application Flask with:
* Route home '/'
* Route tables '/tables'
* Route Query '/query'
* Get from db with sqlAlchemy
* Templates with Jinja "on going"
* Run on port 5000

### DATABASE:
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

## Architecture:
```
├── app
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

* App Folder
    * app.py with application
    * Dockerfile build by docker-compose
    * requirements.txt to install modules needed
* DB folder
    * Dockerfile build by docker-compose
    * sql with our database
* docker-compose build all
* README.md is reading me


## Install
First you need to clone the repository:
```
git clone git@github.com:Pakopac/docker-project.git
```
...