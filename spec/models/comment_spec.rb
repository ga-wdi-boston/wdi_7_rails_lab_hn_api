require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   it "has a valid factory" do
#     expect(FactoryGirl.build_stubbed(:comment)).to be_valid
#   end

#   # it "is invalid without content" do
#   #   comment = FactoryGirl.build_stubbed(:comment, content: nil)
#   #   comment.valid?
#   #   expect(comment.errors[:content]).not_be_nil #how does this one work?
#   # end

#   it "is invalid without content" do
#     comment = FactoryGirl.create(:comment, content: "Here is a bit of test content")
#     comment.valid?
#     expect(comment.errors[:content]).not_to include("can't be blank") #how does this one work?
#   end
# end

describe "Comments API" do

  describe "GET /comments" do

    it "returns all the comments" do
      FactoryGirl.create :comment, content: "Here is some more test content; 1B"
      FactoryGirl.create :comment, content: "And here is some more;1C"

      get "/comments", {}, {"Accept" => "application/json"}

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      comment_contents = body.map{|c| c["content"]}

      expect(comment_contents).to match_array(["Here is some more test content; 1B",
        "And here is some more;1C"])

    end

  end

end
