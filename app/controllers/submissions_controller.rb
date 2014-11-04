class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end
end