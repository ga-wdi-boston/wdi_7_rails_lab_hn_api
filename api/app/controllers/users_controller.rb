class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: 'submissions'
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def user_params
    params.require(:user).permit(:name, :about, :email)
  end
end
