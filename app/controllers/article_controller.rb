class ArticleController < ApplicationController
  def index
    @article = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Article created.'
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article, notice: 'Updates to article successful.'
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end