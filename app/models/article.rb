class Article < ActiveRecord::Base
  has_many :comments
  has_many :karmas
  belongs_to :user
end
