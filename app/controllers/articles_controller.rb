class ArticlesController < ApplicationController

  def index
    @article = Article.all
    render json: @article
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def create
    @article = Article.create(article_params)
    render json: @article
  end

# -------------

  def article_params
    params.require(:article).permit(:title, :user_id, :link, :link_url, :body)
  end

end
