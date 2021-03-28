# PetPlace Marketplace
## By Marko Cirkovic

### Ruby version: 2.7.2

### Database: PostgreSQL

---
## How to run the app:

First, make sure Ruby is installed on your system, you can do this by running the command:
```
ruby -v
```

Now make sure Rails is installed
```
rails -v
```

If you see both, you're all good to go an clone the repo with:
```
git clone https://github.com/markomate/PetPlace.git
```

Next install all the dependencies
```
bundle install
```

Then create a database and migrate the schema with:
```
rake db:create
rake db:migrate
```
Finally initialize webpacker
```
bundle exec rake webpacker:install
```

Now you should be able to run:
```
rails s
```

### Necessary variables for full functionality - you can set these easily with the Figaro gem

* ENV['mailer_email']
* ENV['mailer_password']
* ENV['AWS_ACCESS_KEY_ID']
* ENV['AWS_SECRET_ACCESS_KEY']
* ENV['STRIPE_PUBLISHABLE_KEY']
* ENV['STRIPE_SECRET_KEY']