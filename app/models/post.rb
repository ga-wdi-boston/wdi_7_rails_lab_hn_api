class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes


  def self.top_20#create a way to give priority to top 20 posts.

  end
end
