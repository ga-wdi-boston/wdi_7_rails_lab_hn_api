class User < ActiveRecord::Base
  has_many :comments
  has_many :articles
  has_many :karmas
end
