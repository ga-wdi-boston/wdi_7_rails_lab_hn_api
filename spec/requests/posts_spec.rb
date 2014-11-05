describe "Post API" do

  describe '#index' do
    it "returns a list of all posts" do
      FactoryGirl.create_list(:post, 3)
      get '/posts'
      json = JSON.parse(response.body)
      expect(json.length).to eq(3)
    end
  end

  describe '#show' do
    it "returns the specified post by id" do
      post = FactoryGirl.create(:post)
      get "/posts/#{post.id}"
      json = JSON.parse(response.body)
      expect(json['id']).to eq(post.id)
    end
  end
end