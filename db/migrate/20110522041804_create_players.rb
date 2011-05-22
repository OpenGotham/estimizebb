class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :first
      t.string :last
      t.integer :number
      t.string :position
      t.integer :nlb_id
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
