require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory" do
    user = FactoryGirl.build_stubbed(:user)
    expect(user).to be_valid
  end

  it "is invalid without a name" do
    user = FactoryGirl.build_stubbed(:user, name: nil)
    expect(user).not_to be_valid
  end

  it "is invalid without an email" do
    user = FactoryGirl.build_stubbed(:user, email: nil)
    expect(user).not_to be_valid
  end
end
