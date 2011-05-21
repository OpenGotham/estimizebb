require 'spec_helper'

describe "teams/index.html.erb" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :name => "",
        :league => "",
        :division => "",
        :manager => "",
        :wins => "",
        :losses => "",
        :founded => "",
        :mascot => "",
        :ballpark => "",
        :logo_url => "Logo Url"
      ),
      stub_model(Team,
        :name => "",
        :league => "",
        :division => "",
        :manager => "",
        :wins => "",
        :losses => "",
        :founded => "",
        :mascot => "",
        :ballpark => "",
        :logo_url => "Logo Url"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
  end
end
