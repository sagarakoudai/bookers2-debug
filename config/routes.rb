Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  post "likes/:id/create" => "likes#create", as: :likes
  delete "likes/:id/destroy" => "likes#destroy", as: :like
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  
  
  
end