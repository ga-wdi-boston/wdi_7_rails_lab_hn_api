require 'rails_helper'

Rspec.describe User, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:submission)).to be_valid
  end
end
