class ArticlesController < ApplicationController
  respond_to :html, :xml, :json

  def show
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    if @article.save
       flash[:notice] = "The modifications have been saved."
       redirect_to articles_path
    else
       flash[:error] = "Error. The modifications of your article have not been saved."
       render "edit"
    end  
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
       flash[:notice] = "Your article has been added."
       redirect_to articles_path
    else
       flash[:error] = "Error. Your article has not been saved."
       render "new"
    end  
  end

  def destroy
  end

  def index
    @articles = Article.all
  end
end
