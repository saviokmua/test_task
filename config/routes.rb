Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :categories
  resources :comments
  resources :posts
  root "posts#index"
end
