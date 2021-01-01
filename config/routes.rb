Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'users/:id/edit' => 'users#edit'
  resources :users, only: [:index, :show]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
