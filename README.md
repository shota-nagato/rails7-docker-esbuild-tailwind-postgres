## Usage
```
$ git clone git@github.com:shota-nagato/rails7-docker-esbuild-tailwind-postgres.git
$ docker-compose build
$ docker-compose run --rm web bundle exec rails db:create
$ docker-compose run --rm web bundle exec rails db:migrate
$ docker-compose up
```

## Test
**RSpec**
```
$ docker-compose run --rm web bundle exec rspec
```

**Rubocop**
```
$ docker-compose run --rm web bundle exec rubocop
```

**haml-lint**
```
$ docker-compose run --rm web bundle exec haml-lint app/views
```