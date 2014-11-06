class CommentsController < ApplicationController

  def index
     @comments = Comment.all

     render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  def new
  	@comment = Comment.new(comment_params)
  end

  def create
  	@comment = Comment.create(comment_params)

  	# (@comment.save) ? redirect_to :back : render :new
  end

  private
  def comment_params
		params.require(:comment).permit(:content, :id, :user_id, :post_id, :comment_id)
	end
end