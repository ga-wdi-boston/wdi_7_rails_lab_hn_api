describe "Post Comments API" do

  before(:all) do
    @post = FactoryGirl.build(:post)
  end

  describe '#index' do

    it "returns all the comments for a given post" do
      FactoryGirl.create_list(:comment, 3, post: @post)
      get "/posts/#{@post.id}/comments"
      json = JSON.parse(response.body)
      expect(json.length).to eq 3
    end

  end

  describe '#show' do
    it "returns the specified comment" do
      comment = FactoryGirl.create(:comment, post: @post)
      get "/posts/#{@post.id}/comments/#{comment.id}"
      json = JSON.parse(response.body)
      expect(json['id']).to eq comment.id
    end
  end

end