require "spec_helper"

describe PlayerGameStatEstimatesController do
  describe "routing" do

    it "routes to #index" do
      get("/player_game_stat_estimates").should route_to("player_game_stat_estimates#index")
    end

    it "routes to #new" do
      get("/player_game_stat_estimates/new").should route_to("player_game_stat_estimates#new")
    end

    it "routes to #show" do
      get("/player_game_stat_estimates/1").should route_to("player_game_stat_estimates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/player_game_stat_estimates/1/edit").should route_to("player_game_stat_estimates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/player_game_stat_estimates").should route_to("player_game_stat_estimates#create")
    end

    it "routes to #update" do
      put("/player_game_stat_estimates/1").should route_to("player_game_stat_estimates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/player_game_stat_estimates/1").should route_to("player_game_stat_estimates#destroy", :id => "1")
    end

  end
end
