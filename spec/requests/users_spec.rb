describe "User API" do
  it "#index all users" do
    FactoryGirl.create_list(:user, 10)
    get "/users"

    # test for the 200 status code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(10)
  end

  it "retrieves a specific user" do
    user = FactoryGirl.create(:user)
    get "/users/#{user.id}"

    # test for the 200 status-code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check that the message attributes are the same.
    expect(json['name']).to eq(user.name)
    expect(json['email']).to eq(user.email)
    expect(json['about']).to eq(user.about)
  end
end
