Rails.application.routes.draw do



  get 'privacy', to: "pages#privacy"
  get 'about', to: "pages#about"
  get 'blog', to: "pages#blog"

  resources :debats, only: [ :show, :index ] do
    resources :votes, only: :create do
      resources :comments, only: :create
      end
    end

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'debats#index'
  
end
