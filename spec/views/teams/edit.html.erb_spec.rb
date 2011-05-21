require 'spec_helper'

describe "teams/edit.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "",
      :league => "",
      :division => "",
      :manager => "",
      :wins => "",
      :losses => "",
      :founded => "",
      :mascot => "",
      :ballpark => "",
      :logo_url => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_league", :name => "team[league]"
      assert_select "input#team_division", :name => "team[division]"
      assert_select "input#team_manager", :name => "team[manager]"
      assert_select "input#team_wins", :name => "team[wins]"
      assert_select "input#team_losses", :name => "team[losses]"
      assert_select "input#team_founded", :name => "team[founded]"
      assert_select "input#team_mascot", :name => "team[mascot]"
      assert_select "input#team_ballpark", :name => "team[ballpark]"
      assert_select "input#team_logo_url", :name => "team[logo_url]"
    end
  end
end
