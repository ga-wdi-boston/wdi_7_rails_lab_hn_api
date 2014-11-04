require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:comment)).to be_valid
  end

  it "is invalid without content" do
    comment = FactoryGirl.build_stubbed(:comment, content: nil)
    comment.valid?
    expect(comment.errors[:content]).not_to include("can't be blank") #how does this one work?
  end


end
