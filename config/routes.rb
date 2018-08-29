Rails.application.routes.draw do
  get 'votes/index'
  get 'votes/new'
  get 'votes/show'
  get 'votes/create'
  get 'votes/delete'
  get 'comments/index'
  get 'comments/new'
  get 'comments/show'
  get 'comments/create'
  get 'comments/update'
  get 'comments/edit'
  get 'comments/delete'
  get 'debats/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
