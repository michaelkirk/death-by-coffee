require 'spec_helper'

describe "cups/edit.html.erb" do
  before(:each) do
    @cup = assign(:cup, stub_model(Cup))
  end

  it "renders the edit cup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cup_path(@cup), :method => "post" do
    end
  end
end
