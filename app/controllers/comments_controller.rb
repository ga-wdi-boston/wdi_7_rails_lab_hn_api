class CommentsController < ApplicationController

  # respond_to :json

  def index
    # respond_with Comment.all
     @comments = Comment.all

     render json: @comments
  end

end
