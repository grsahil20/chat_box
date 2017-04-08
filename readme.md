# Chat Box

Chat box is a app to chat in a common room, within strangers.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine to try.

### Prerequisites

Assuming you have installed `git`, `ruby`, `rails` and `rvm` or any other `ruby version manager` like `rbenv`.


### Installing

```
git clone git@github.com:grsahil20/chat_box.git
cd chat_box
```

This will automatically create a gemset name `chat_box`. Install `bundler` if you don't have.

`gem install bundler`

Now install all other gems using command

```
bundle install
```

Next, create datbase and run migrations.


```
rake db:create db:migrate
```


## Running the program

Start server

```
rails s
```

In another tab do

```
rackup private_pub.ru -s thin -E production
```

Open browser tab and go to `http://localhost:3000`

Here you will see a login form.

enter user_name, use dialect.

Open another browser tab in incognito, or in a diffrent browser because we cannot share cookies.

Enjoy chat :)

## Author

**Sahil Grover**


## License

Feel free to copy/edit/use code anywhere :)
