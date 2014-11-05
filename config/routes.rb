Rails.application.routes.draw do
  resources :users, only: [:show, :index]
  resources :submissions, only: [:show, :index]
end
