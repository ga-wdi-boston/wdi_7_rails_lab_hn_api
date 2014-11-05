class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
  	@user = User.new(user_params)
  end

  def create
  	@user = User.create(user_params)

  	(@user.save) ? redirect_to :back : render :new
  end

  private
  def user_params
		params.require(:user).permit(:username, :email, :id)
	end
end