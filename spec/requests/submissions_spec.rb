describe "Submission API" do
  it '#index all submissions' do
    FactoryGirl.create_list(:submission, 10)
    get '/submissions'
    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json.length).to eq(10) # check to make sure the right amount of submissions are returned
  end

  it 'retrieves a specific submission' do
    submission = FactoryGirl.create(:submission)
    get "/submissions/#{submission.id}"

    # test for the 200 status-code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check that the message attributes are the same.
    expect(json['title']).to eq(submission.title)
    expect(json['url']).to eq(submission.url)
    expect(json['user_id']).to eq(submission.user_id)
  end
end
