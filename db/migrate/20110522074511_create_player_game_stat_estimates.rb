class CreatePlayerGameStatEstimates < ActiveRecord::Migration
  def self.up
    create_table :player_game_stat_estimates do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :team_id
      t.float :avg
      t.integer :hr
      t.integer :rbi
      t.float :era
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :player_game_stat_estimates
  end
end
