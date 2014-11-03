class User < ActiveRecord::base
	has_many :comments
	has_many :posts
	has_many :votes
end