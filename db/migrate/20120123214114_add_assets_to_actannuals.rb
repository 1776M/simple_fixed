class AddAssetsToActannuals < ActiveRecord::Migration
  def self.up
    add_column :actannuals, :assets, :float
    add_column :actannuals, :cash, :float
    add_column :actannuals, :liabs, :float
    add_column :actannuals, :equity, :float
  end

  def self.down
    remove_column :actannuals, :equity
    remove_column :actannuals, :liabs
    remove_column :actannuals, :cash
    remove_column :actannuals, :assets
  end
end
