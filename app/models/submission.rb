class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  validates :title, presence: true
  validates :user_id, presence: true
  validates :url, presence: true, if: "body.nil?"
  validates :body, presence: true, if: "url.nil?"

  def self.topTwenty
  end

end
