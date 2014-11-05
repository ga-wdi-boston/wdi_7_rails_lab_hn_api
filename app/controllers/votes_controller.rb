class VotesController < ApplicationController

  def index
    @votes = Vote.all
    render json: @votes
  end

  def show
    @vote = Vote.find(params[:id])
    render json: @vote
  end

end
