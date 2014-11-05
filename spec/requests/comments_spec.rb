describe "Comment API" do
  it '#index all comments' do
    FactoryGirl.create_list(:comment, 10)
    get '/comments'
    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json.length).to eq(10) # check to make sure the right amount of comments are returned
  end

  it 'retrieves a specific comment' do
    comment = FactoryGirl.create(:comment)
    get "/comments/#{comment.id}"

    # test for the 200 status-code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check that the message attributes are the same.
    expect(json['content']).to eq(comment.content)
    expect(json['submission_id']).to eq(comment.submission_id)
    expect(json['user_id']).to eq(comment.user_id)
  end
end
