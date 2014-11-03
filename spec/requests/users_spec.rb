describe "User API" do
  it '#index all users' do
    FactoryGirl.create_list(:user, 10)
    get '/users'
    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json['users'].length).to eq(10) # check to make sure the right amount of messages are returned
  end
end
