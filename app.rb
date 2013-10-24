require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps_game_result/:id' do
    @result = RPSGameResult.find(params[:id])

    erb :'rps_game/show'
  end

  get '/rps_game_results' do
    @results = RPSGameResult.all

    erb :'rps_game/index'
  end

  post '/rps_game' do
    @game = RPSGame.new(params[:play])

    result = @game.result
    result.save

    redirect "/rps_game_result/#{result.id}"
  end

  get '/rps_game' do
    erb :'rps_game/new'
  end
end
