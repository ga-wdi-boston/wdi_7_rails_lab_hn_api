class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission
  end

  def create
    @submission = Submission.create(submission_params)
    render json: @submission
  end

  # def create_vote
  #   @submission = Submission.find(:id params(:post_id))
  #   @vote = @submission.votes.create(vote_params)
  # end

  private
  def submission_params
    params.require(:submission).permit(:title, :url, :body, :user_id)
  end
end
