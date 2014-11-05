class User < ActiveRecord::API
  validates :name, presence: true
  validates :email, presence: true
end
