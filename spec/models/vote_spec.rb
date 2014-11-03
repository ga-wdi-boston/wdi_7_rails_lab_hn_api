require 'rails_helper'

RSpec.describe Vote, :type => :model do
  it "has a valid factory" do
    pending
    expect(FactoryGirl.build_stubbed(:vote)).to be_valid
  end
end
