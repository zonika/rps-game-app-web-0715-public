require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    @rps = RPSGame.new(params["play"].to_sym)
    @comp_move = @rps.computer_play
    binding.pry
    erb :rps_game
  end
end
