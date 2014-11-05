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
    @user = User.find(id: params(:user_id))
    @submission = @user.submissions.create(submission_params)

  end

  def create_vote
    @submission = Submission.find(:id params(:post_id))
    @vote = @submission.votes.create(vote_params)
  end

  end

  private
  def submission_params
    params.require(:submission).permit(:title, :url, :body, :user_id)
  end
end
