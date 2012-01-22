class DropAnnualsTable < ActiveRecord::Migration
  def self.up
      drop_table :annuals
  end

  def self.down
  end
end
