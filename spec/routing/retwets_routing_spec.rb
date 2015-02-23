require "spec_helper"

describe RetwetsController do
  describe "routing" do

    it "routes to #index" do
      get("/retwets").should route_to("retwets#index")
    end

    it "routes to #new" do
      get("/retwets/new").should route_to("retwets#new")
    end

    it "routes to #show" do
      get("/retwets/1").should route_to("retwets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/retwets/1/edit").should route_to("retwets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/retwets").should route_to("retwets#create")
    end

    it "routes to #update" do
      put("/retwets/1").should route_to("retwets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/retwets/1").should route_to("retwets#destroy", :id => "1")
    end

  end
end
