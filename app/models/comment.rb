class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  has_many :votes
  has_many :comments

  validates :content, presence: true
end
