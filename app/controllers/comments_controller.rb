class CommentsController < ApplicationController

  # respond_to :json

  def index
    # respond_with Comment.all
     @comments = Comment.all

     render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

end
