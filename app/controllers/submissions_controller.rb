class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.top_20
    render json: @submissions
  end
end
