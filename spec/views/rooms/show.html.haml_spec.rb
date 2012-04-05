require 'spec_helper'

describe "rooms/show" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :area_size => 1,
      :beds => 2,
      :flat_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
