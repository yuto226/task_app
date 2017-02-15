class AdminsController < ApplicationController
layout 'admin'
  def index
    @index=Article.where(admin_id:current_admin.id)
  end
  def new
  end
  def create
  end
  def show
    @show=Article.find(admin_params)
  end

  private
  def admin_params
    params.require(:id)
  end
end
