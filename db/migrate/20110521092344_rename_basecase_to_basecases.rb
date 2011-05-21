class RenameBasecaseToBasecases < ActiveRecord::Migration
  def self.up
  	rename_table :basecase, :basecases
  end

  def self.down
	rename_table :basecases, :basecase
  end
end
