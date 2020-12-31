Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:show]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
