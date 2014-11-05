class CommentsController < ApplicationController
  def index
    @submission = Submission.find(params[:submission_id])
    @comments = @submission.comments
    render json: @comments
  end


end
