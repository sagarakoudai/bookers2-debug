Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
    resources :book do
    resources :book_comments,only: [:create,:destroy]
  end
  
  
  
  post "likes/:id/create" => "likes#create", as: :likes
  delete "likes/:id/destroy" => "likes#destroy", as: :like
  
  # post "/book/:id/book_comments" => "book_comments#create", as: :comments
  # delete "book_comments/:id/destroy" => "book_comments#destroy", as: :book_book_comment
 
 
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  
  
  
end