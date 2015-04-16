class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
  end

  private
  def vote_params
    params.require(:vote).permit(:value, :user_id, :submission_id, :comment_id)
  end
end
