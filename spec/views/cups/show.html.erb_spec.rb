require 'spec_helper'

describe "cups/show.html.erb" do
  before(:each) do
    @cup = assign(:cup, stub_model(Cup, {:created_at => DateTime.now}))
  end

  it "renders attributes in <p>" do
    render
  end
end
