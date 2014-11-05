class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.top_20
    render json: @submissions
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission
  end

  # post: /submissions?name=George&email=gbanis@gmail.com&about=Message
  def create
    @submission = Submission.create(submission_params)
    render json: @submission
  end


  def submission_params
    params.permit(:title, :url, :body, :user_id)
  end

end
