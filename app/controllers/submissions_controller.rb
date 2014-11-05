class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.top_20
    render json: @submissions
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission
  end
end
