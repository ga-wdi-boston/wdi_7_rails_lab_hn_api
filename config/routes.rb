Rails.application.routes.draw do
  resources :users, except: [:new, :edit]
  resources :posts, except: [:new, :edit]

  resources :comments, only: [:index, :show]
  resources :votes
end