class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission, include: 'user, comments'
  end

  def create
    @submission = Submission.new(submission_params)
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
