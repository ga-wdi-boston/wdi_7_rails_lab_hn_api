class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :created_at, :link, :link_url, :body
  belongs_to :user, :user_id => :name
  has_many :comments
  url [:id, :title]
end
