class CreateTeamPlayerStats < ActiveRecord::Migration
  def self.up
    create_table :team_player_stats do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :team_id
      t.string :position
      t.string :rl
      t.string :status
      t.float :avg
      t.integer :hr
      t.integer :rbi
      t.integer :wins
      t.integer :losses
      t.float :era

      t.timestamps
    end
  end

  def self.down
    drop_table :team_player_stats
  end
end
