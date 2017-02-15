class ArticlesController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  def new
    @articles=Article.new
  end
  def create
    admin=Admin.find(current_admin.id)
    @new_article=admin.article.create(article_params)
    redirect_to admins_index_path
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to  admins_index_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:contents)
  end
end
