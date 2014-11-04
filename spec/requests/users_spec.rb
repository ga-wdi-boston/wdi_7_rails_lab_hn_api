describe "User API" do
  it "#index all users" do
    users = FactoryGirl.create_list(:user, 10)
    get '/users'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(10)
  end
end