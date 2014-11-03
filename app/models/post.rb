class Post < ActiveRecord::base
	belongs_to :user
	has_many :comments
	has_many :votes

	def top_20
	end
end