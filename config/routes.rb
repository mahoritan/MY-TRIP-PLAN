Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plans
  resources :users, only: [:show]
end
