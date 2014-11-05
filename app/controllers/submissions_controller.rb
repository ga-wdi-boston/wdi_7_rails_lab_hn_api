class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end

  def show
    newest
  end

  def newest
    @submissions = Submission.last(20)
    render json: @submissions
  end
end