Rails.application.routes.draw do
	resources :users, only: [:show, :index]
	resources :posts

	# resources :users, except: [:new, :edit] do 
	# 	resources :posts, except: [:new, :edit]
	# end

	# resources :comments
	# resources :votes
end
