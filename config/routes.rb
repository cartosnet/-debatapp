Rails.application.routes.draw do

  resources :debats, only: :show do
    resources :votes, only: :create do
      resources :comments, only: :create
      end
    end

  devise_for :users
  root to: 'debats#index'
  
end
