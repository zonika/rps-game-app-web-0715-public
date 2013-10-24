---
  tags: sinatra
  languages: ruby
---

# Rock, Paper, Scissors - Part 1 - Models

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

# Rock, Paper, Scissors - Part 2 - Persistence

## Deliverable

Work in your existing repository. Your solution should be delivered in your master branch.

## Instructions

### Get the tests to pass

Create an RPSGameResults model and get the tests passing

### Update the Sinatra application

```ruby
  get '/rps_game_result/:id' do
    # Show the result of a specific game
  end

  get '/rps_game_results' do
    # Show the 20 most recent game results
  end

  post '/rps_game' do
    # Where the form submission goes
  end

  get '/rps_game' do
    # The game form
  end
```
