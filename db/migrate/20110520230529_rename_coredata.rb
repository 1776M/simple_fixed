class RenameCoredata < ActiveRecord::Migration
  def self.up
      rename_table :coredata, :basecase
  end

  def self.down
      rename_table :basecase, :coredata
  end
end
