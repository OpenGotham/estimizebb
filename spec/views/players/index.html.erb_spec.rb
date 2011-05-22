require 'spec_helper'

describe "players/index.html.erb" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :name => "Name",
        :number => 1,
        :position => "Position",
        :nlb_id => 1,
        :team_id => 1
      ),
      stub_model(Player,
        :name => "Name",
        :number => 1,
        :position => "Position",
        :nlb_id => 1,
        :team_id => 1
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
