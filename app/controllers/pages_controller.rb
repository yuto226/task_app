class PagesController < ApplicationController
  before_action :authenticate_user!,only: [:show,:index]
  def root
    if user_signed_in?
    redirect_to users_sign_out_path
  end
  end

  def index
      @index=Article.all
  end
  def show
      @show=Article.find(params[:id])
  end
end
