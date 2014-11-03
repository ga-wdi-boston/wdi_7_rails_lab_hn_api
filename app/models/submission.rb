class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  def self.top_20
    Post.all.limit(20) # Not so great, but works for a moment
  end
end
