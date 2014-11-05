require "rails_helper"


describe "HackerNews API" do
  it 'lists out submissions' do
    FactoryGirl.create_list(:submissons, 10)

    get '/submissions'

    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['submissions'].length).to eq(10)
  end
end


#it contains content or a link
#it has an author
