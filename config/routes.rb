Rails.application.routes.draw do
  
  get '/app' => 'submissions#index'
  get '/' => redirect('https://github.com/fishermanswharff/wdi_7_rails_lab_hn_api')
  get '/submissions/newest'

  resources :users, only: [:index, :show]
  resources :submissions, only: [:index, :show, :new, :create]
  resources :comments, only: [:index, :show, :new, :create]
  resources :votes, only: [:create]
  
end
