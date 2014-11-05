class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def index
    if params[:submission_id]
      @submission = Submission.find(params[:submission_id])
      @comments = @submission.comments
    elsif params[:user_id]
      @user = User.find(params[:user_id])
      @comments = @user.comments
    else
      @comments = Comment.all
    end

    render json: @comments
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  private

  def comment_params
    params.permit(:content, :submission_id, :comment_id, :user_id)
  end


end
