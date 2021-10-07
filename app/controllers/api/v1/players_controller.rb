class Api::V1::PlayersController < ApplicationController

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

  def player_params
    params.require(:player).permit(:name, :team, :image, :position)  
  end
end
