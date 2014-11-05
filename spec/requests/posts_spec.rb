require 'rails_helper'

RSpec.describe "Posts", :type => :request do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    posts = FactoryGirl.create_list(:post, 10)
    get posts_path
    expect(json.length).to eq(10)
  end

  describe '#show' do
    post = FactoryGirl.build_stubbed(:post)
    get post_path(post.id)
    expect(json['id']).to eq post.id
  end
  describe '#create' do
    # post :create, format: :json, post: FactoryGirl.attributes_for(:post)
    # expect()
  end
  describe '#update' do

  end
  describe '#delete' do

  end
end
