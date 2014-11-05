Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :submissions, only: [:index, :show, :new, :create]
  resources :comments, only: [:index, :show, :new, :create]
  resources :votes, only: [:create]
  get '/submissions/newest'
end
