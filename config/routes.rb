Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources:'pages'
  get 'pages/show'
  get 'pages/index'
  root'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
