Rails.application.routes.draw do

  resources :submissions, only: [:show, :index, :create] do
    resources :comments, only: [:show, :index, :create]
    resources :votes, only: [:show, :index, :create]
  end

  resource :comments, only: :index do
    resources :votes, only: :create
  end

  resources :users, only: [:index, :show, :create] do
    resources :submissions, only: :index
    resources :comments, only: :index
  end

end
