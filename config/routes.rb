Rails.application.routes.draw do
  resources :users
  resources :submissions
  resources :comments
  resources :votes
end
