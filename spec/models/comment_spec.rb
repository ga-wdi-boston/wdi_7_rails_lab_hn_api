require 'rails_helper'
require 'comment'

describe Comment do
  it "has a body" do
    comment = Comment.new
    comment.content.should != ""
  end
end

#it belongs to an author
#it belongs to a post
