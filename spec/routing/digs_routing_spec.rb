require "rails_helper"

RSpec.describe DigsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/digs").to route_to("digs#index")
    end

    it "routes to #new" do
      expect(:get => "/digs/new").to route_to("digs#new")
    end

    it "routes to #show" do
      expect(:get => "/digs/1").to route_to("digs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/digs/1/edit").to route_to("digs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/digs").to route_to("digs#create")
    end

    it "routes to #update" do
      expect(:put => "/digs/1").to route_to("digs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/digs/1").to route_to("digs#destroy", :id => "1")
    end

  end
end
