class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  # users?user[name]=George&user[email]=gbanis@gmail.com&user[about]=Message
  def user_params
    params.permit(:name, :email, :about)
  end
end
