## Features
- [x] As a user I can list all the restaurants `GET /restaurants`
- [x] As a user I can see one restaurant's details `GET /restaurants/:id`
- [x] As a user I can add a restaurant `POST /restaurants`

## Sinatra & ActiveRecord boilerplate

This is a minimalist implementation of ActiveRecord with Sinatra.

- clone the repo
- run `rake db:create` to create your db
- run your migrations with `rake db:migrate`

Now you can play with the `Restaurant` model in:

```bash
rake console
```

Here are some commands you can run in the console:

```ruby
restaurant = Restaurant.new(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris")
restaurant.persisted?
# => false
restaurant.id
# => nil
restaurant.save
restaurant.id
# => 1
```

To launch a Sinatra server just run this and open a web browser at [http://localhost:4567](http://localhost:4567):

```bash
bundle exec ruby app.rb
```

Enjoy!
