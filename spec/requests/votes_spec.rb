describe "Votes API " do

  describe "GET /votes" do

    it "returns all votes for a comment" do
      @comment1 = FactoryGirl.create :comment, content: "Here is some more test content; 1B"
      @vote1 = @comment1.votes.create
      @vote2 = @comment1.votes.create

      get "/comments/#{@comment1.id}/votes"

      expect(response).to be_success #HTTP:Code: 200 successful request
      body = JSON.parse(response.body)
      comment1_votes = body.map{|v| v}

      expect(comment1_votes.length).to eq(2)
    end
  end
end
  #   it "returns all votes for a comment" do
  #     @comment1 = FactoryGirl.create :comment, content: "Here is some more test content; 1B"
  #     binding.pry
  #     @vote1 = @comment1.votes.create
  #     @vote2 = @comment1.votes.create

  #     get "/votes/#{Vote.find(comment_id: @comment)}/votes"

  #     expect(response).to be_success
  #     body = JSON.parse(response.body)
  #     comment1_votes = body.map{|v| v}

  #     expect(comment1_votes.length).to eq(2)
  #   end
  # end