class RepliesController < ApplicationController

  def index
    player = Player.find(params[:player_id])
    replies = player.replies

    render json: replies, status:200
  end

  def create
    player = Player.find(params[:player_id])
    reply = player.replies.create(reply_params)

    render json: reply, status:200
  end

  def show
    reply = Reply.find(params[:id])

    render json: reply, status:200
  end

  private

  def reply_params
    params.require(:report).permit(:comment_id, :text)
  end
  
end
