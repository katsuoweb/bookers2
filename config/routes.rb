Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  devise_for :users
  resources :users, only: [:index, :show]
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'

  resources :books, only: [:new, :create, :index, :show, :destroy]
  get 'books/:id/edit' => 'books#edit', as: :edit_book
end
