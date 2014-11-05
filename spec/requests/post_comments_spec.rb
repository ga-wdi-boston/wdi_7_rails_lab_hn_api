require 'rails_helper'

RSpec.describe "Post Comments", :type => :request do
  describe "GET /posts/:id/comments" do
    it "works! (now write some real specs)" do
      get post_comments_path(@post.id)
      expect(response).to have_http_status(200)
    end
  end
end
