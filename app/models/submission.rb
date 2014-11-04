class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  def self.top_20
    Submission.all.limit(20) #not so great, but works for the moment
  end
end