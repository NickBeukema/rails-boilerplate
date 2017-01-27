# Rails API and Ember

This is a basic starter project using Rails in API mode, and Ember on the front-end.

## What this project starts with

### Rails and Ember

Rails on the back-end, set up in [API mode](http://edgeguides.rubyonrails.org/api_app.html).

EmberJS is used on the front-end, with [Ember Data](https://github.com/emberjs/data).

### Authentication

Authentication is provided with [Devise](https://github.com/plataformatec/devise) on the back-end and [Ember Simple Auth](https://github.com/simplabs/ember-simple-auth) on the front-end.

### TODO

- [x] Main back-end and front-end technologies.
- [x] User Login and Authentication
- [x] Unit Testing Framework
- [x] Integrated Testing Framework

## How to set up this project
```
cd frontend
npm install
```

```
cd ../
bundle install
rake db:create db:migrate
bundle exec rake app:start
```





