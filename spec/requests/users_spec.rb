describe "User API" do
  it "#index all users" do
    users = FactoryGirl.create_list(:user, 10)
    get '/users'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(10)
  end

  it "retrieves a specific user" do
    user = FactoryGirl.create(:user)
    get "/users/#{user.id}"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['name']).to eq(user.name)
    expect(json['email']).to eq(user.email)
  end
end