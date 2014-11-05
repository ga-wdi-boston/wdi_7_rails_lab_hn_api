require 'rails_helper'

RSpec.describe "Post Comments", :type => :request do

  before(:all) do
    @post = FactoryGirl.create(:post)
  end

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    comments = FactoryGirl.create_list(:comment, 10, post: @post)
    get post_comments_path(@post.id)
    expect(json.length).to eq(10)
  end

  describe '#show' do
    comment = FactoryGirl.build_stubbed(:comment, post: @post)
    get post_comment_path(comment.post_id, comment.id)
    expect(json['id']).to eq comment.id
  end
  describe '#create' do

  end
  describe '#update' do

  end
  describe '#delete' do

  end
end
