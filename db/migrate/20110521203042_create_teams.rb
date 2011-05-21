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

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
