require 'spec_helper'

describe "rooms/edit" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :area_size => 1,
      :beds => 1,
      :flat_id => 1
    ))
  end

  it "renders the edit room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rooms_path(@room), :method => "post" do
      assert_select "input#room_area_size", :name => "room[area_size]"
      assert_select "input#room_beds", :name => "room[beds]"
      assert_select "input#room_flat_id", :name => "room[flat_id]"
    end
  end
end
