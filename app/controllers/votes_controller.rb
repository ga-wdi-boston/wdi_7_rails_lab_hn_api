class VotesController < ApplicationController
  def index
    if params[:submission_id]
      @submission = Submission.find(params[:submission_id])
      @votes = @submission.votes
      render json: @votes
    elsif params[:comments_id]
      @comment = Comment.find(params[:comment_id])
      @votes = @comment.votes
      render json: @votes
    end
  end
end
