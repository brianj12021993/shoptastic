Rails.application.routes.draw do
  devise_for :users
  root 'stores#index'
  resources :stores
  namespace :user do
    resources :items, only: [:new, :create, :show]
  end
end
