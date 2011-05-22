require 'spec_helper'

describe "PlayerGameStatEstimates" do
  describe "GET /player_game_stat_estimates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get player_game_stat_estimates_path
      response.status.should be(200)
    end
  end
end
