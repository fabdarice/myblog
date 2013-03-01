class ArticlesController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :update]

  def show
    @article = Article.where(:title => params[:title]).first
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    category_id = params[:category_id]
    @category = Category.find(category_id)
    @article.category = @category
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
    category_id = params[:category_id]
    @category = Category.find(category_id)
    @article.category = @category
    if @article.save
       flash[:notice] = "Your article has been added."
       redirect_to articles_path
    else
       flash[:error] = "Error. Your article has not been saved."
       render "new"
    end  
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to articles_path
    else
      flash[:error] = "Error. Your article has not been deleted."
    end
  end

  def index
    if (params[:category_name] == nil) or (params[:category_name] == 'all')
      @articles = Article.desc("published_on").paginate(:page => params[:page], :per_page => 10)
    else
      @category = Category.where(:name => params[:category_name]).first
      @articles = Article.where(:category => @category)
    end
  end

end
