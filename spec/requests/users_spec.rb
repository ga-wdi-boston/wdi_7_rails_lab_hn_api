describe "User API" do

  describe "#index" do
    it "lists all users" do
      FactoryGirl.create_list(:user, 10)
      get '/users'
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json['users'].length).to eq(10)
    end
  end

  it "returns the information of the given user" do
    user = FactoryGirl.create(:user)

    get "/users/#{user.id}"

    json = JSON.parse(response.body)
    expect(json['id']).to eq(user.id)
  end


end