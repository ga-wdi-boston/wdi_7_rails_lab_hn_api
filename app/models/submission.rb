class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  def self.top_20
    Post.all.limit(20)   # Not the ideal way to do this, but will work for now. Come back to this.
  end

end
