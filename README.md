---
  tags: sinatra
  languages: ruby
---

# Rock, Paper, Scissors
# Part 1

## Deliverable

Fork this repository. Your solution should be delivered in your master branch.

## Instructions

### Create the game model

Build the RPSGame model according to the rspec tests.

### Create the Sinatra app

Integrate your RPSGame class with the Sinatra application in app.rb.

The application will serve 1 route: GET requests to  the path /rps/:play.
The value of :play will be used as the player's throw (rock, paper, or
scissors). 

The Sinatra application should serve an HTML page that displays the move that
the player made, the move that the computer made, and whether the player won,
lost, or tied. 

# Part 2

## Deliverable

Work in your repository from part 1.

## Instructions

### Create a form-based game interface

Add 3 routes to your application:

GET /play
POST /play
GET /result/:id

The GET /play page should have a form that provides the RPS choices
with a radio button element.

Submitting the form should send a POST to /play. The POST /play should
store the result of the game in a table called "rps_games", which has
the following columns:

* play - the player's play
* computer_play - the computer's play
* won - true if the player won, false if not
* created_at - approximately when the game results were calculated

Install the Sequel gem to manage your database using Bundler
(that means having a Gemfile!). Use a migration to create your table.

Refactor your existing RpsGame class to be a Sequel::Model that is
backed by the rps_games table.
