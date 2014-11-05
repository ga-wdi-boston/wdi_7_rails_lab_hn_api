class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    # @votes =
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    @votes = @comment.votes
    render json: @comment
  end

  def create
    @comment = Comment.create(comment_params)
    @comment.save
    # how do you do comments within comments.
    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @comment
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :user_id, :comment_id, :submission_id)
  end
end
