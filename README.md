# Chitter2 #

A Twitter clone, written to practise building a test-driven Sinatra web application.

### Specifications ###

- Show a list of messages
- Add new messages
- Delete messages
- Update messages
- Comment on messages
- Tag messages into categories
- Filter messages by tag
- Users manage their messages

### User stories ###
```
As a user,
so that I can see what people are up to,
I would like to see a list of bookmarks on the homepage

As a user,
so that I can let people know what I am doing,  
I want to post a message to chitter

As a user,
so that I can find the newest messages first,  
I want to see all messages in reverse chronological order

As a user,
so that I can better appreciate the context of a message,
I want to see the time at which it was sent

As a user,
so that I can post messages on Chitter as me
I want to sign up for Chitter
```

### Technologies ###
- Ruby 2.4.1
- Sinatra
- RSpec / Capybara
- PostgreSQL
- TablePlus


### How to run the code and tests ###
To run the code:
 - ```bundle install```
 - ```ruby app.rb``` or ```rackup```
 - visit the localhost page in your browser

To see the tests, run ```rspec```
