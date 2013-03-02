class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])
    if @comment.save
      redirect_to article_path(@article.title) 
    else
      render 'articles/show'
      flash[:error] = "This comment has not been created"
    end
  end
end
