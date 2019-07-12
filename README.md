# README
>Full CRUD with BSON/MongoDB Rails app
>The course provided by Johns Hopkins University and Coursera
>zips downloaded from http://media.mongodb.org/zips.json

>Why Mongo:
>This Document-based DB is very good for geospatial data

>Why Mongoid driver?:
>Mongoid can provide schema for schemaless MongoDB


* Ruby version
2.4.6

* Configuration
mongod --config /etc/mongod.conf
mongoimport --db test --collection zips --drop --file zips.json

* Database creation

* Database initialization

* How to run the test suite
rspec NNN

* Services (job queues, cache servers, search engines, etc.)
Rails 5.2.3
Mongoid 6.2.1
Will_paginate

* Deployment instructions
create mLab Account
create MongoLab Account
create Heroku account

to get all zips into the mongo db:
  mongoimport -h dbhost -d dbname -c zips -u dbuser -p dbpass --file zips.json
MONGOLAB_URI for heroku: mongodb://dbuser:dbpass@dbhost/dbname
Search for MongoLab page on Heroku DevCenter to see what to do to complete the deployment
PDF: https://drive.google.com/file/d/0Bwvt4e6DQqn4ZVBkc0pLSG0yaGs/view

* TODO: Angular.js front-end interface
* TODO: Add Autoprefixer to PostCSS plugins
