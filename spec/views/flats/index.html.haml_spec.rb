require 'spec_helper'

describe "flats/index" do
  before(:each) do
    assign(:flats, [
      stub_model(Flat,
        :name => "Name"
      ),
      stub_model(Flat,
        :name => "Name"
      )
    ])
  end

  it "renders a list of flats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
