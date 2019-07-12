# README

> Full CRUD with BSON/MongoDB Rails app
> The course provided by Johns Hopkins University and Coursera
> zips downloaded from http://media.mongodb.org/zips.json

> Why Mongo:
>   This Document-based DB is very good for geospatial data

> Why Mongoid driver?:
>   Mongoid can provide schema for schemaless MongoDB

* Ruby version

  2.4.6

* MongoDB version

  mongodb-linux-x86_64-ubuntu1604-3.4.2

* Configuration

> mongod --config /etc/mongod.conf

> mongoimport --db test --collection zips --drop --file zips.json

> rails g mongoid:config

* Database creation

* Database initialization

* How to run the test suite

> rspec NNN

* Services (job queues, cache servers, search engines, etc.)

> Rails 5.2.3

> Mongoid 6.2.1

> Will_paginate

* Deployment instructions

> create mLab (MongoLab) and Heroku accounts

> For Heroku we use environment variable MONGOLAB_URI: mongodb://dbuser:dbpass@dbhost/dbname

> Search for mLab (MongoLab) page on Heroku DevCenter to see what to do to complete the deployment

> PDF: https://drive.google.com/file/d/0Bwvt4e6DQqn4ZVBkc0pLSG0yaGs/view

* TODO: Angular.js front-end interface
* TODO: Add Autoprefixer to PostCSS plugins
