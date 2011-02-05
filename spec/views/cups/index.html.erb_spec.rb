require 'spec_helper'

describe "cups/index.html.erb" do
  before(:each) do
    assign(:cups, [
      stub_model(Cup),
      stub_model(Cup)
    ])
  end

  it "renders a list of cups" do
    render
  end
end
