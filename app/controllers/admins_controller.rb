class AdminsController < ApplicationController
layout 'admin'
  def index
    @c=Article.all
  end
  def new
  end
  def create
  end
end
