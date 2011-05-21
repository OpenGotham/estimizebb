class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :starts_at
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :venue_id
      t.string :mlb_gameid
      t.integer :inning_state
      t.string :league

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
