require 'spec_helper'

describe "flats/edit" do
  before(:each) do
    @flat = assign(:flat, stub_model(Flat,
      :name => "MyString"
    ))
  end

  it "renders the edit flat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flats_path(@flat), :method => "post" do
      assert_select "input#flat_name", :name => "flat[name]"
    end
  end
end
