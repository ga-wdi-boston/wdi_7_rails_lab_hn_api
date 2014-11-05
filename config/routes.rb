
Rails.application.routes.draw do
  resources :users, except: [:new, :edit] do
    resources :posts, except: [:new, :edit]
  end

  resources :comments, only: [:index, :show]
  resources :votes
end