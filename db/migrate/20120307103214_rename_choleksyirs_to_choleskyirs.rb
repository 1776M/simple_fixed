class RenameCholeksyirsToCholeskyirs < ActiveRecord::Migration
  def self.up
      rename_table :choleksyirs, :choleskyirs
  end

  def self.down
      rename_table :choleskyirs, :choleksyirs
  end
end
