class Api::V1::CommentsController < ApplicationController

  def index
    comments = Comment.all

    render json: comments, status:200
  end

  def create
    comment = Comment.create(comment_params)

    render json: comment, status:200
  end

  def show
    comment = Comment.find(params[:id])

    render json: comment, status:200
  end

  private

  def comment_params
    params.require(:comment).permit(:player_id, :text, :gameweek)
  end
end
