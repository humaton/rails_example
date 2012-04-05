require 'spec_helper'

describe "rooms/new" do
  before(:each) do
    assign(:room, stub_model(Room,
      :area_size => 1,
      :beds => 1,
      :flat_id => 1
    ).as_new_record)
  end

  it "renders new room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rooms_path, :method => "post" do
      assert_select "input#room_area_size", :name => "room[area_size]"
      assert_select "input#room_beds", :name => "room[beds]"
      assert_select "input#room_flat_id", :name => "room[flat_id]"
    end
  end
end
