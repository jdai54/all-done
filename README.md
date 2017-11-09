# All-Done

All-Done is a self destructing To-Do list application. Users can create and delete todo list items to manage their tasks. Items automatically delete after seven days via Rake automation.

The app is deployed on Heroku: https://all-done.herokuapp.com/

The source code is here on GitHub: https://github.com/jdai54/all-done

This app was created as part of the [Bloc](www.bloc.io) Full Stack Web Development course.

# Features

+ Users can create a standard account in order to create, edit and delete items.
+ After seven days an automated rake scheduler will parse all current items. Any item older than 7 days will be deleted.

# Setup and Configuration

**Languages and Frameworks**: Ruby on Rails and Bootstrap

**Ruby version 2.2.1**

**Databases**: SQLite (Test, Development), PostgreSQL (Production)

**Development Tools and Gems include**:

+ Devise for authentication
+ Whenever for cron scheduling
+ FavoriteMailer for email confirmation
+ RSpec and Capybara tested

**Setup:**

+ Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).

+ The config/application.example.yml file illustrates how environment variables should be stored.

**To run All-Done locally:**

+ Clone the repository
+ Run bundle install
+ Create and migrate the SQLite database with `rake db:create` and `rake db:migrate`
+ Start the server using `rails server`
+ Run the app on `localhost:3000`
