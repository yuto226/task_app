class PagesController < ApplicationController
  def root
  end
  def index
      @index=Article.all
  end
  def show
      @show=Article.find(params[:id])
  end
end
