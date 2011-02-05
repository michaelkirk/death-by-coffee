require "spec_helper"

describe CupsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/cups" }.should route_to(:controller => "cups", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/cups/new" }.should route_to(:controller => "cups", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/cups/1" }.should route_to(:controller => "cups", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/cups/1/edit" }.should route_to(:controller => "cups", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/cups" }.should route_to(:controller => "cups", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/cups/1" }.should route_to(:controller => "cups", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/cups/1" }.should route_to(:controller => "cups", :action => "destroy", :id => "1")
    end

  end
end
