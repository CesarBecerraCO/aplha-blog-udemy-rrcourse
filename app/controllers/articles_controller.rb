class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    #render plain:params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was sisccesfully created!"
      redirect_to article_path(@article)
    else
      #Si no sale bien, se hace un render de la vista new
      #ver en new.htnl.erb el código para mostrar errores
      render 'new'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end
