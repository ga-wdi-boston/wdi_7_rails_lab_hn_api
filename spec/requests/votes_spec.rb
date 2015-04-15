describe "Vote API" do
  it '#index all votes' do
    FactoryGirl.create_list(:submission_vote, 10)
    get '/votes'
    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json.length).to eq(10) # check to make sure the right amount of votes are returned
  end

  it 'retrieves a specific submission vote' do
    vote = FactoryGirl.create(:submission_vote)
    get "/votes/#{vote.id}"

    # test for the 200 status-code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check that the message attributes are the same.
    expect(json['direction']).to eq(vote.direction)
    expect(json['submission_id']).to eq(vote.submission_id)
    expect(json['user_id']).to eq(vote.user_id)
  end

  it 'retrieves a specific comment vote' do
    vote = FactoryGirl.create(:comment_vote)
    get "/votes/#{vote.id}"

    # test for the 200 status-code
    expect(response).to be_success

    json = JSON.parse(response.body)

    # check that the message attributes are the same.
    expect(json['direction']).to eq(vote.direction)
    expect(json['comment_id']).to eq(vote.comment_id)
    expect(json['user_id']).to eq(vote.user_id)
  end
end
