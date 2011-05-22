require 'spec_helper'

describe "player_game_stat_estimates/index.html.erb" do
  before(:each) do
    assign(:player_game_stat_estimates, [
      stub_model(PlayerGameStatEstimate,
        :player_id => 1,
        :game_id => 1,
        :team_id => 1,
        :avg => 1.5,
        :hr => 1,
        :rbi => 1,
        :era => 1.5,
        :user_id => 1
      ),
      stub_model(PlayerGameStatEstimate,
        :player_id => 1,
        :game_id => 1,
        :team_id => 1,
        :avg => 1.5,
        :hr => 1,
        :rbi => 1,
        :era => 1.5,
        :user_id => 1
      )
    ])
  end

  it "renders a list of player_game_stat_estimates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
