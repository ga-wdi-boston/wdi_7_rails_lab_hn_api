require 'rails_helper'

RSpec.describe "Users", :type => :request do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    users = FactoryGirl.create_list(:user, 10)
    get users_path
    expect(json.length).to eq(10)
  end

  describe '#show' do
    user = FactoryGirl.build_stubbed(:user)
    get user_path(user.id)
    expect(json['id']).to eq user.id
  end
  describe '#create' do

  end
  describe '#update' do

  end
  describe '#delete' do

  end
end
