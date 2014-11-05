class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def new
  	@post = Post.new(post_params)
  end

  def create
  	@post = Post.create(post_params)

  	(@post.save) ? redirect_to :back : render :new
  end

  private
  def post_params
		params.require(:post).permit(:title, :id, :user_id, :url)
	end
end