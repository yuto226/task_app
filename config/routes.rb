Rails.application.routes.draw do
  get 'articles/new'

  devise_for :admins
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  resources:'pages',:path => 'users/page'
  resources:'articles'
  get 'pages/root' => 'pages#root'
  get 'admins/index'
  get 'admins/new'
  get 'admins/show/:id' => 'admins#show'
  root'pages#root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
