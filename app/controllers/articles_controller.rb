class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created."
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:article] = 'Updated Successfully'
      redirect_to @article
    else
      render :edit
    end
  end

  private

  def article_params
    params[:article].permit(:title, :content)
  end
end
