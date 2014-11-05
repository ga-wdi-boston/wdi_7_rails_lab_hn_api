class VotesController < ApplicationController

  def index
    @votes = Vote.all
    render json: @votes
  end

  def show
    @vote = Vote.find(params[:id])
    render json: @vote
  end

  def create
    @vote = Vote.create(vote_params)
    @vote.save
    render json: @vote
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    render json: @vote
  end

  private
  def vote_params
   params.require(:vote).permit(:user_id, :value, :comment_id, :submission_id)
  end


end
