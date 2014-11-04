describe "Submission API" do
  it "#index all submissions" do 
    submissions = FactoryGirl.create_list(:submission, 30)
    get "/submissions"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(30)
  end
end