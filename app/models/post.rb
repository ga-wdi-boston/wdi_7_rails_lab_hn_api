class Post < ActiveRecord::API
  belongs_to :user
  validates :title, presence: true
end
