require "spec_helper"

describe FlatsController do
  describe "routing" do

    it "routes to #index" do
      get("/flats").should route_to("flats#index")
    end

    it "routes to #new" do
      get("/flats/new").should route_to("flats#new")
    end

    it "routes to #show" do
      get("/flats/1").should route_to("flats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flats/1/edit").should route_to("flats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flats").should route_to("flats#create")
    end

    it "routes to #update" do
      put("/flats/1").should route_to("flats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flats/1").should route_to("flats#destroy", :id => "1")
    end

  end
end
