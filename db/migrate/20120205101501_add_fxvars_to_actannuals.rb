class AddFxvarsToActannuals < ActiveRecord::Migration
  def self.up
    add_column :actannuals, :USD_EBITDA, :float
    add_column :actannuals, :GBP_EBITDA, :float
    add_column :actannuals, :EUR_EBITDA, :float
    add_column :actannuals, :YEN_EBITDA, :float
    add_column :actannuals, :BRL_EBITDA, :float
    add_column :actannuals, :USD_net_assets, :float
    add_column :actannuals, :GBP_net_assets, :float
    add_column :actannuals, :EUR_net_assets, :float
    add_column :actannuals, :YEN_net_assets, :float
    add_column :actannuals, :BRL_net_assets, :float
  end

  def self.down
    remove_column :actannuals, :USD_EBITDA
    remove_column :actannuals, :USD_EBITDA 
    remove_column :actannuals, :GBP_EBITDA 
    remove_column :actannuals, :EUR_EBITDA 
    remove_column :actannuals, :YEN_EBITDA 
    remove_column :actannuals, :BRL_EBITDA 
    remove_column :actannuals, :USD_net_assets
    remove_column :actannuals, :GBP_net_assets
    remove_column :actannuals, :EUR_net_assets
    remove_column :actannuals, :YEN_net_assets
    remove_column :actannuals, :BRL_net_assets

  end
end
