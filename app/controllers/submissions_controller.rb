class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission, status: :ok
  end

  def newest
    @submissions = Submission.last(20)
    render json: @submissions
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      render json: @submission, status: :created, location: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end

  private
  def submission_params
    params.require(:submission).permit(:title, :url, :body, :user_id)
  end
end