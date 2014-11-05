require 'rails_helper'

RSpec.describe "Posts", :type => :request do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it "gets a list of posts" do
      posts = FactoryGirl.create_list(:post, 10)
      get posts_path
      expect(json.length).to eq(10)
    end
  end

  describe '#show' do
    it "gets a specific post" do
      post = FactoryGirl.create(:post)
      get post_path(post.id)
      expect(json['id']).to eq post.id
    end
  end
  describe '#create' do

  end
  describe '#update' do

  end
  describe '#delete' do

  end
end
