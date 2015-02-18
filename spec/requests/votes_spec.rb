require 'rails_helper'

RSpec.describe "Votes", :type => :request do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    # votes = FactoryGirl.create_list(:vote, 10)
    get votes_path
    expect(json.length).to eq(10)
  end

  describe '#show' do
    vote = FactoryGirl.build_stubbed(:vote)
    get vote_path(vote.id)
    # expect(json['id']).to eq vote.id
  end
  describe '#create' do

  end
  describe '#update' do

  end
  describe '#delete' do

  end
end
