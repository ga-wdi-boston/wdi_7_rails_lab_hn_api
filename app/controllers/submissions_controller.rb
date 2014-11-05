class SubmissionsController < ApplicationController

  def show
    @submission = Submission.find(params[:id])
    render json: @submission
  end

  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @submissions = @user.submissions
    # elsif params[:comment_id]
    #   @comments = Comment.find(params[:comment_id])
    #   @submissions = @comment.submissions
    else
      @submissions = Submission.all
    end

  render json: @submissions

  end

  def create
    @submission = Submission.create(submission_params)
    render json: @submission
  end

  private

  def submission_params
    params.permit(:title, :url, :body, :user_id)
  end


end
