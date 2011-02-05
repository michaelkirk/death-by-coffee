require 'spec_helper'

describe "cups/new.html.erb" do
  before(:each) do
    assign(:cup, stub_model(Cup).as_new_record)
  end

  it "renders new cup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cups_path, :method => "post" do
    end
  end
end
