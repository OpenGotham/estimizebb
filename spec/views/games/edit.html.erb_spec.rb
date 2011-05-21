require 'spec_helper'

describe "games/edit.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :home_team_id => 1,
      :away_team_id => 1,
      :venue_id => 1,
      :mlb_gameid => "MyString",
      :inning_state => 1,
      :league => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_home_team_id", :name => "game[home_team_id]"
      assert_select "input#game_away_team_id", :name => "game[away_team_id]"
      assert_select "input#game_venue_id", :name => "game[venue_id]"
      assert_select "input#game_mlb_gameid", :name => "game[mlb_gameid]"
      assert_select "input#game_inning_state", :name => "game[inning_state]"
      assert_select "input#game_league", :name => "game[league]"
    end
  end
end
