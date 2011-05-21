require 'spec_helper'

describe "games/index.html.erb" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :home_team_id => 1,
        :away_team_id => 1,
        :venue_id => 1,
        :mlb_gameid => "Mlb Gameid",
        :inning_state => 1,
        :league => "League"
      ),
      stub_model(Game,
        :home_team_id => 1,
        :away_team_id => 1,
        :venue_id => 1,
        :mlb_gameid => "Mlb Gameid",
        :inning_state => 1,
        :league => "League"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mlb Gameid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "League".to_s, :count => 2
  end
end
