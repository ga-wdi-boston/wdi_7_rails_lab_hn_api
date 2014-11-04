require 'rails_helper'

RSpec.describe Submission, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:submission)).to be_valid
  end
end
