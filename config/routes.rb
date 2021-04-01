Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  
  post "likes/:id/create" => "likes#create", as: :like
  delete "likes/:id/destroy" => "likes#destroy", as: :liked
  
end