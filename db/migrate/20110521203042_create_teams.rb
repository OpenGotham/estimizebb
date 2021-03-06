class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.string :division
      t.string :manager
      t.integer :wins
      t.integer :losses
      t.integer :founded
      t.string :mascot
      t.string :ballpark
      t.string :logo_url
      t.string :mlb_id

      t.timestamps
    end
    add_index :teams, :mlb_id
  end

  def self.down
    drop_table :teams
  end
end
