class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  has_many :votes

  validates :content, presence: true
  validates :user_id, presence: true
  validates :submission_id, presence: true
  # validates_associated :votes
  # validates_associated :comments
end
