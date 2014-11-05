Rails.application.routes.draw do

  resources :submissions, only: [:show, :index, :new] do
    resources :comments, only: [:show, :index, :new]
    resources :votes, only: :new
  end

  resource :comments, only: :index do
    resources :votes, only: :new
  end

  resources :users, only: [:index, :show, :new] do
    resources :submissions, only: :index
    resources :comments, only: :index
  end

end
