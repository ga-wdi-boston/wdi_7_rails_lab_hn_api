describe "Post Comments API" do

  before(:all) do
    @post = FactoryGirl.create(:post)
  end

  describe '#index' do

    it "returns all the comments for a given post" do
      FactoryGirl.create_list(:comment, 3, post: @post)
    end

  end

  describe '#show' do
    it "returns the specified comment" do

    end
  end

end