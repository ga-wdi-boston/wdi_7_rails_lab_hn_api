class VotesController < ApplicationController

  def index
    @votes = Vote.all
    render json: @votes
  end

  def show
    @vote = Vote.find(params[:id])
    if @vote
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def create
    @vote = Vote.new(allowed_params)

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def update
    @vote = Votes.find(params[:id])

    if @vote.update(allowed_params)
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vote = Vote.find(params[:id])

    if @vote.destroy
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:vote).permit(:user_id, :submission_id, :comment_id, :value)
  end

end
