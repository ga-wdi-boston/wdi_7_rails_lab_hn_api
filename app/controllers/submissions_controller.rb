class SubmissionsController < ApplicationController

  before_action :set_submission, only: [:show, :destroy]

  def index
    @submissions = Submission.all
    render json: @submissions
  end


  def show
    # @submission = Submission.find(params[:id])
    @comments = @submission.comments
    # respond_to do |format|
      # render :json {@submission, @submission_comments, @submission_votes}
    render json: @submission
     # render json: @comments
  end

  def create
    # @user = current_user
    @submission = Submission.create(submission_params)
    @submission.save
    render json: @submission
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    render json: @submission
  end


  private

  def set_submission
    @submission = Submission.find(params[:id])
    @submission_comments = @submission.comments
    @submission_votes = @submission.votes
  end


  def submission_params
    params.require(:submission).permit(:user_id, :content, :title, :url)
  end


end
