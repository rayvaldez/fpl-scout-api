class Api::V1::CommentsController < ApplicationController

  def index
    player = Player.find(params[:player_id])
    comments = player.comments

    render json: comments, status:200
  end

  def create
    player = Player.find(params[:player_id])
    comment = player.comments.create(comment_params)

    render json: comment, status:200
  end

  def show
    comment = Comment.find(params[:id])

    render json: comment, status:200
  end

  private

  def comment_params
    params.require(:comment).permit(:player_id, :text)
  end
end
