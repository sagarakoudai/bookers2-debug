Rails.application.routes.draw do
  devise_for :users
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments,only: [:create,:destroy]
    resource :likes,only: [:create,:destroy]
  end
 
  
  post 'follow/:id' => 'relationships#follow', as: 'follow' 
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get 'follow/:id/index' => 'relationships#follow_index', as: 'follow_index'
  get 'follower/:id/index' => 'relationships#follower_index', as: 'follower_index'
  
  get '/search', to: 'search#search'
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  
end