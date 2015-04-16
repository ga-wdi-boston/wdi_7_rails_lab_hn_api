class CommentsController < ApplicationController
  def index
    @submission = Submission.find(params[:submission_id])
    @comments = @submission.comments
    render json: @comments
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  def comment_params
    params.permit(:content, :user_id, :submission_id, :comment_id)
  end

end
