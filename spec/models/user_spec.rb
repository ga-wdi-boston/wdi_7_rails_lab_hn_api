require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory" do
    expect(Factory.create(:user)).to be_valid
  end
  it "is invalid without a name"
  it "is invalid without a email"
end
