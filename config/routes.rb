Rails.application.routes.draw do

  resources :debats, only: [ :show, :index ] do
    resources :votes, only: :create do
      resources :comments, only: :create
      end
    end

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'debats#index'
  
end
