require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :location => "MyString",
      :facebook_id => 1,
      :description => "MyText",
      :club => nil
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_location[name=?]", "event[location]"
      assert_select "input#event_facebook_id[name=?]", "event[facebook_id]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_club[name=?]", "event[club]"
    end
  end
end
