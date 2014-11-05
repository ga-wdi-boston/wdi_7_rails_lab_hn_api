class CommentsController < ApplicationController
  def index
    @comments = Comment.where({post_id: params[:post_id]})
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end
end