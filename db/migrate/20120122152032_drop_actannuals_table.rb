class DropActannualsTable < ActiveRecord::Migration
  def self.up
      drop_table :actannuals
  end

  def self.down
  end
end

