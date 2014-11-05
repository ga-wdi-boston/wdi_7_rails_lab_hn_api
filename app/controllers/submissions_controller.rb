class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
    render json: @submissions
  end

  def create
    @submission = Submission.new(allowed_params)

    if @submission.save
      render json: @submission, status: :created, location: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end

  def update
    @submission = Submission.find(params[:id])

    if @submission.update(allowed_params)
      render json: @submission, status: :created, location: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @submission = Submission.find(params[:id])

    if @submission.destroy
      render json: @submission, status: :created, location: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:submission).permit(:title, :url, :body, :user_id)
  end

end
