require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "has a valid factory" do
    comment = FactoryGirl.build_stubbed(:comment)
    expect(comment).to be_valid
  end
end
