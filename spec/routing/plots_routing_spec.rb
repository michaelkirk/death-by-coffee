require "spec_helper"

describe PlotsController do
  describe "routing" do

    it "recognizes and generates #collective" do
      { :get => "/plots/collective" }.should route_to(:controller => "plots", :action => "collective")
    end

  end
end
