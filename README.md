# example of react app in a rails 5.1 (rc1) app

dependencies:
* ruby
* rails 5.1.rc1 (`gem install rails -v 5.1.0.rc1`)
* nodejs
* yarn
* postgresql

to get server running
```
bundle
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails server
```

then in another terminal tab to run the reactjs:
```
yarn install
bin/webpack-dev-server
```
