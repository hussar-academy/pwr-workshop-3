# WykopApp

Simple app for show some ActiveRecord power, with silly interface to play around.
It's created for second workshop for KNTAW.
It uses rails.

## Setup

It requires `Postgres` to work properly. Before the initial setup, please ensure that `config/database.yml` has correct informations.

### Initial setup
```
bundle
bundle exec rake db:create
bundle exec rake db:migrate
```

### Run the server
```
rails s
```
Application is than available at `localhost:3000`


### A few usefull commands

```bash
# Yes, rails gives some help
rails --help

# Create new app without javascripts, unit tests, and with configured mysql
rails new -J -T -d mysql .

# Next commands generate basic models relation in the application
rails g scaffold user email:string:uniq password

rails g scaffold dig title body:text owner:references:index

rails g scaffold comment body:text owner:references:index dig:references:index

rails g model Vote user:references:index votable:references{polymorphic}:index amount:integer
```
