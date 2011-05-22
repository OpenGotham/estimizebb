require 'spec_helper'

describe "players/edit.html.erb" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :name => "MyString",
      :number => 1,
      :position => "MyString",
      :nlb_id => 1,
      :team_id => 1
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path(@player), :method => "post" do
      assert_select "input#player_name", :name => "player[name]"
      assert_select "input#player_number", :name => "player[number]"
      assert_select "input#player_position", :name => "player[position]"
      assert_select "input#player_nlb_id", :name => "player[nlb_id]"
      assert_select "input#player_team_id", :name => "player[team_id]"
    end
  end
end
