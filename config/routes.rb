Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  get "home/about"=>"homes#about"

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
  resources :book_comments, only: [:create, :destroy]

  resources :books do
      resource :favorites, only: [:create, :destroy]
  end



  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
