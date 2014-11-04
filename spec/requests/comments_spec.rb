 describe "Comments API" do

  describe "GET /comments" do

    it "returns all the comments" do
      @comment1 = FactoryGirl.create :comment, content: "Here is some more test content; 1B"
      @comment2 = FactoryGirl.create :comment, content: "And here is some more;1C"

      get '/comments' #, {}, {"Accept" => "application/json"}

      expect(response).to be_success #.status).to eq 200
      body = JSON.parse(response.body)
      comment_contents = body.map{|c| c["content"]}

      expect(comment_contents).to match_array(["Here is some more test content; 1B",
        "And here is some more;1C"])
    end


    it "returns consistent objects" do
      @comment1 = FactoryGirl.create :comment, content: "Here is some more test content; 1B"
      @comment2 = FactoryGirl.create :comment, content: "And here is some more;1C"

       get '/comments'

     expect(response).to be_success
     body = JSON.parse(response.body)
     comment_contents = body.map{|c| c["id"]}

     expect(comment_contents[0]).to eq(@comment1.id)
   end

    it 'retrieves a specific comment' do
      comment = FactoryGirl.create(:comment)
      get "/comments/#{comment.id}"

      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json['private_attr']).to eq(nil)
    end

    it 'has a post_id' do
      @post = Post.create
      comment = @post.comments.create
      get"/comments/#{comment.id}"



      expect(response).to be_success

      json = JSON.parse(response.body)
      expect(json["post_id"]).to eq(@post.id)
    end

end
end






























