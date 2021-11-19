class Api::V1::RepliesController < ApplicationController

  def index
    replies = Reply.all

    render json: replies, status:200
  end

  def create
    reply = Reply.create(reply_params)

    render json: reply, status:200
  end

  def show
    reply = Reply.find(params[:id])

    render json: reply, status:200
  end

  private

  def reply_params
    params.require(:reply).permit(:comment_id, :text, :name)
  end

end
