# getting started

## dependencies

* yarn (via homebrew)
* rails 5.1.0.rc1 (or later)
  * to get the 5.1rc1 version of rails `gem install rails -v 5.1.0.rc1`
* nodejs (recommend 6.9.X)
* postgresql

## troubleshooting yarn

yarn should be installed via homebrew not npm. if you need to fix that, try this:

* `npm uninstall -g yarn`
* `brew install yarn`
* optionally, `brew uninstall node --ignore-dependencies`
* try running `yarn --version` and if you get error like: `-bash: /usr/local/bin/yarn: No such file or directory`, restart your terminal

## make a new app

To generate a nice new app just like this one:

* `rails new cool-app --skip-turbolinks --skip-coffee --webpack=react -d=postgresql`

## troubleshooting rails

check your package.json, you should see a lot of dependencies installed. namely, make sure your devDependencies includes something called 'webpack-dev-server' if this is missing, double check and follow the section above 'troubleshooting yarn' then run:
* `be rails webpacker:install`
* `be rails webpacker:install:react`

once you see your dependencies installed properly you can:
* run `./bin/webpack-dev-server`
* open a new tab and run `be rails s`

If there are no errors, you should be all set. Add files to `app/javascripts/packs` to use them in your views.

## see the example app in action

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
yarn ./bin/webpack-dev-server
```
