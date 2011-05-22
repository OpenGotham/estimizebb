require 'spec_helper'

describe "player_game_stat_estimates/new.html.erb" do
  before(:each) do
    assign(:player_game_stat_estimate, stub_model(PlayerGameStatEstimate,
      :player_id => 1,
      :game_id => 1,
      :team_id => 1,
      :avg => 1.5,
      :hr => 1,
      :rbi => 1,
      :era => 1.5,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new player_game_stat_estimate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => player_game_stat_estimates_path, :method => "post" do
      assert_select "input#player_game_stat_estimate_player_id", :name => "player_game_stat_estimate[player_id]"
      assert_select "input#player_game_stat_estimate_game_id", :name => "player_game_stat_estimate[game_id]"
      assert_select "input#player_game_stat_estimate_team_id", :name => "player_game_stat_estimate[team_id]"
      assert_select "input#player_game_stat_estimate_avg", :name => "player_game_stat_estimate[avg]"
      assert_select "input#player_game_stat_estimate_hr", :name => "player_game_stat_estimate[hr]"
      assert_select "input#player_game_stat_estimate_rbi", :name => "player_game_stat_estimate[rbi]"
      assert_select "input#player_game_stat_estimate_era", :name => "player_game_stat_estimate[era]"
      assert_select "input#player_game_stat_estimate_user_id", :name => "player_game_stat_estimate[user_id]"
    end
  end
end
