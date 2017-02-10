class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    case resource
  when User
    pages_show_path
when Admin
    admins_index_path
  end
end
  def after_sign_out_path_for(resource)
    pages_index_path
  end
end
