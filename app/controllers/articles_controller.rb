class ArticlesController < ApplicationController
  include ApplicationHelper
  
  before_action :set_article, only: [:edit, :update, :show]
  
  def index
    #Lista con todos los artículos que hallan en la BBDD
    #Ver que en la view index.html.erb se trata directamente esta variable
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def edit
    #@article = Article.find(params[:id])
  end
  
  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article was sisccesfully updated!"
      redirect_to article_path(@article)
    else
    end
  end
  
  def create
    #render plain:params[:article].inspect
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article was sisccesfully created!"
      redirect_to article_path(@article)
    else
      #Si no sale bien, se hace un render de la vista new
      #ver en new.htnl.erb el código para mostrar errores
      render 'edit'
    end
  end
  
  def show
    #@article = Article.find(params[:id])
  end
  
  def destroy
    Article.find(params[:id]).destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end
  
  #Private section
  private
    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
