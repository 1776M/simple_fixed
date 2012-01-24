class AddAssetsToAnnuals < ActiveRecord::Migration
  def self.up
    add_column :annuals, :assets, :float
    add_column :annuals, :cash, :float
    add_column :annuals, :liabs, :float
    add_column :annuals, :equity, :float
  end

  def self.down
    remove_column :annuals, :equity
    remove_column :annuals, :liabs
    remove_column :annuals, :cash
    remove_column :annuals, :assets
  end
end
