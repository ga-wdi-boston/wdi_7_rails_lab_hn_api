describe "Comment API" do

  it "#index all comments" do
    comments = FactoryGirl.create_list(:comment,200)
    get '/comments'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json.length).to eq(200)
  end

  it "shows a single comment" do 
    comment = FactoryGirl.create(:comment)
    get "/comments/#{comment.id}"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json[:id] == comment.id)
  end
  
end