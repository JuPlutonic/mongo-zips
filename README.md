# (App in the wild)[http://zips-semanticand-angular.herokuapp.com]

> Full CRUD with BSON/MongoDB Rails app
> The course provided by Johns Hopkins University and Coursera
> zips downloaded from http://media.mongodb.org/zips.json

> Why Mongo:
>   This Document-based DB is very good for geospatial data

> Why Mongoid driver?:
>   Mongoid can provide schema for schemaless MongoDB

* Ruby version

  2.6.8

* MongoDB version

  (local mongodb: mongodb-linux-x86_64-ubuntu1804-4.4.6 (mongodb-community) +
  mongodb-database-tools-ubuntu1804-x86_64-100.3.1,
  mongodb interoperates with remote server: , remote mongodb - mlab)

* Rails 5.2.6 `rails new --skip-active-record`

* Mongoid 6.4.8

* Will_paginate

* Configuration / database creation-initialization

> `mongod --config /etc/mongod.conf`

> `mongoimport --db test --collection zips --drop --file zips.json`

> `rails g mongoid:config`

* How to run the test suite

> rspec NNN

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions (Search for mLab (MongoLab) page on Heroku DevCenter to see what to do to complete the deployment)

> create mLab (MongoLab) and Heroku accounts

> use command `%mongodb_installation%/bin/mongoimport -h cluster-zips-shard-0/cluster-zips-shard-00-00-"$MONGO_SRV_ID".mongodb.net:27017,cluster-zips-shard-0/cluster-zips-shard-00-01-"$MONGO_SRV_ID".mongodb.net:27017,cluster-zips-shard-0/cluster-zips-shard-00-02-"$MONGO_SRV_ID".mongodb.net:27017 --ssl -u "$MONGO_USER" -p "$MONGO_PWD" --authenticationDatabase admin -d cluster-zips --collection zips --drop --file zips.json` for import zips

> For Heroku we use environment variable MONGOLAB_URI: `heroku config:add MONGOLAB_URI=mongodb+srv://dbuser:dbpass@dbhost/dbname`
