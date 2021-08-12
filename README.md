# Badges

![Heroku](https://pyheroku-badge.herokuapp.com/?app=zips-semanticand-angular&style=plastic)

[::App in the wild::](https://zips-semanticand-angular.herokuapp.com/)

![app in the wild](https://s3.amazonaws.com/assets.heroku.com/addons.heroku.com/uploaded_logos/13555/icon.png)

## About app

> Full CRUD with BSON/MongoDB Rails app \
> The course provided by Johns Hopkins University and Coursera \
> Zips downloaded from <https://media.mongodb.org/zips.json>

Why Mongo?
>   This Document-based DB is very good for geospatial data

Why Mongoid driver?
>   Mongoid can provide schema for schemaless MongoDB

Ruby version in Gemfile
>   ruby '~> 2.6.0'

MongoDB version
>   (local mongodb: mongodb-linux-x86_64-ubuntu1804-4.4.6 (mongodb-community) + \
>   mongodb-database-tools-ubuntu1804-x86_64-100.3.1, \
>   mongodb interoperates with remote server - mlab)

Other versions:

* Rails 5.2.6 `rails new --skip-active-record`
* Mongoid 6.4.8
* Will_paginate

## Developmernt configuration / database creation-initialization

> `mongod --config /etc/mongod.conf` \
> `mongoimport --db zips_development --collection zips --drop --file zips.json` \
> `rails g mongoid:config`

## Deployment instructions

```diff
- Search for mLab (MongoLab) page on Heroku DevCenter
+ [mLab is shutting down its Heroku add-on](https://docs.mlab.com/shutdown-of-heroku-add-on/)
+ See [site](https://docs.mlab.com/mlab-to-atlas) about mLab to MongoDB Atlas migration
- Create mLab (MongoLab) and Heroku accounts
- Import zips with BASH command

-```bash
#  %mongodb_installation%/bin/mongoimport -h \
cluster-zips-shard-0/cluster-zips-shard-00-00-"$MONGO_SRV_ID".mongodb.net:27017\
, \
cluster-zips-shard-0/cluster-zips-shard-00-01-"$MONGO_SRV_ID".mongodb.net:27017\
, \
cluster-zips-shard-0/cluster-zips-shard-00-02-"$MONGO_SRV_ID".mongodb.net:27017\
   --ssl \
   -u "$MONGO_USER" -p "$MONGO_PWD" \
   --authenticationDatabase admin \
   -d cluster-zips \
   --collection zips \
   --drop \
   --file zips.json

- For Heroku use environment variable MONGOLAB_URI

-`heroku config:add MONGOLAB_URI=mongodb+srv://dbuser:dbpass@dbhost/dbname`
```
