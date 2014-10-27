# WykopApp

Simple app for show some power ActiveRecord with silly interface to play around.
It is created for second workshop for KNTAW (Koło Naukowe Tworzenia Aplikacji Webowych).
It uses rails.

## Setup

It requires `MySQL` to work properly

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
