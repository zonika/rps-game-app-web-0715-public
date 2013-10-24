---
  tags: sinatra
  languages: ruby
---

# Rock, Paper, Scissors - Part 2 - Persistence

## Deliverable

Work in your existing repository. Your solution should be delivered in your master branch.

## Instructions

### Update your infrastructure

Put all the gems you'll be using in a Gemfile.
Make sure to set up bundler correctly! (like in our bundler lab).

You should move your require statements into your
config/environment.rb file. Your config.ru should like this:

```ruby
  require './config/environment'

  run GameApp
```

Feel free to use this branch, which includes a solution to part 1 and has
been correctly configured (minus a few things).

### Get the tests to pass

Create an RPSGameResults model backed by Sequel and get the tests passing.

RPSGameResults should be stored in an "rps_game_results" table, which looks
like: 

* play - human player's play
* computer_play - the computer's play
* won - true if the player won, false if not. Use the Boolean column
  type.
* tied - true if their was a tie, false if not. Use the Boolean column
  type.
* created_at - approximately when the game results were calculated. Use
  the DateTime column type.

Use a migration and run it manually.

### Update the Sinatra application

Change your application to have exactly 4 routes:

* GET /rps_game_result/:id
* GET /rps_game_results
* POST /rps_game
* GET /rps_game

GET /rps_game page should render a form that provides the RPS choices
with a radio button element.

Submitting the form should POST to /rps_game. The POST /rps_game action should
store the result.

Install the Sequel gem to manage your database using Bundler
(that means having a Gemfile!). Use a migration to create your table.

Refactor your existing RpsGame class to be a Sequel::Model that is
backed by the rps_games table.
