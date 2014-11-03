class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  def self.topTwenty
  end

end
