Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "/errors/not_found", as: "error404"
  resources :categories
  resources :comments
  resources :posts
  root "posts#index"
  get "*any", via: :all, to: "errors#not_found"
end
