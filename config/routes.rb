Rails.application.routes.draw do
  resources :users, only: [:show, :index]
  resources :submissions, only: [:show, :index]
  resources :comments, only: [:show, :index]
  resources :votes, only: [:show, :index]
end
