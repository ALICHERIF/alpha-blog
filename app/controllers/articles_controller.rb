class ArticlesController < ApplicationController
  def show
    #debug
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
end
