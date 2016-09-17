# 筋トレ農場サーバ

## Requirement
- Ruby 2.3.1
- SQLite3 3.11.0

## Install
```
$ gem install bundler
$ bundle install --path vendor/bundle
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

## Run Server

```
$ bundle exec ruby app.rb -p 8080
```

## Run sensor daemon

```
$ bundle exec ruby daemon.rb
```

## Open manager

http://localhost:8080/

