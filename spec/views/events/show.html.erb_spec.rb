require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :location => "Location",
      :facebook_id => 1,
      :description => "MyText",
      :club => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
