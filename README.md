#Redu Help-Center

This is the help-center repository for [Redu](www.redu.com.br).

##Setup

### Sunspot / Solr
Once Solr server is properly installed you may run it. If you're using 
[Sunspot Solr Gem](https://github.com/outoftime/sunspot/tree/master/sunspot_solr#sunspotsolr)
it can be easily done with the following rake task:
```shell
rake sunspot:solr:start # or sunspot:solr:run if you want it on foreground
```
What about if you already have data in your database? Run reindex!
```shell
rake sunspot:reindex
```
To run the tests you should run the server in this environment:
```shell
rake sunspot:solr:run RAILS_ENV=test
```

###Authentication
To create or edit some admin route you should authenticate first. To do this you need a file called ``config/initializer/user.rb``:
```ruby
USER_ID = "user"
PASSWORD = "password"
```

## Technologies and Versions
* Ruby 1.9.3
* Rails 3.2.5
* MySQL Database Manager