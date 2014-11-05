class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments.as_json(only: [:id, :content])
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :submission_id, :comment_id)
    end
end
