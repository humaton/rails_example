require 'spec_helper'

describe "Flats" do
  describe "GET /flats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get flats_path
      response.status.should be(200)
    end
  end
end
