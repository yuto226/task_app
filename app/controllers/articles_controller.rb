class ArticlesController < ApplicationController
  def new
    @articles=Article.new
  end
  def create
    admin=Admin.find(current_admin.id)
    @new_article=admin.article.create(article_params)
    if @new_article.save
    redirect_to admins_index_path
  else
    redirect_to articles_new_path
  end
  end

  private
  def article_params
    params.require(:article).permit(:title,:contents)
  end
end
