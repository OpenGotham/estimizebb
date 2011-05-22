class AddInProgressBooleanToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :in_progress, :boolean
  end

  def self.down
    remove_column :games, :in_progress
  end
end
