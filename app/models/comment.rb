class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	belongs_to :comments
	has_many :comments

	has_many :votes
end