describe "Submission API" do
  
  it "#index all submissions" do 
    submissions = FactoryGirl.create_list(:submission, 30)
    get "/submissions"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(30)
  end

  it "#newest gets the most recent 20 submissions" do
    submissions = FactoryGirl.create_list(:submission, 30)
    get "/submissions/newest"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(20)
  end

end