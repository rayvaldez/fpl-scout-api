class Api::V1::PlayersController < ApplicationController
  before_action :fetch_players, only: [:index]

  require 'rest-client'
  require 'json'

  def index
    players = Player.all

    render json: players, status:200
  end

  def show
    player = Player.find(params[:id])

    render json: player, status:200
  end

  def create
    player = Player.create(player_params)

    if player.save
      render json: player, status:200
    else
      render json: player, status:400
    end
  end

  private

  def fetch_players
    url = 'http://fantasy.premierleague.com/api/bootstrap-static/'
    data = RestClient.get(url)
    parsed = JSON.parse(data)
    p = parsed["elements"]
    player_array = p.map { |a| [a['first_name'] + " " + a['second_name'], a['now_cost'], a['team']]}
    players = player_array.map { |a| Player.create(name: a[0], price:a[1], team:a[2])}
  end

  def player_params
    params.require(:player).permit(:name, :team, :position, :price)
  end
end
