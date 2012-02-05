class AddFxvarsToAnnuals < ActiveRecord::Migration
  def self.up
    add_column :annuals, :USD_EBITDA, :float
    add_column :annuals, :GBP_EBITDA, :float
    add_column :annuals, :EUR_EBITDA, :float
    add_column :annuals, :YEN_EBITDA, :float
    add_column :annuals, :BRL_EBITDA, :float
    add_column :annuals, :USD_net_assets, :float
    add_column :annuals, :GBP_net_assets, :float
    add_column :annuals, :EUR_net_assets, :float
    add_column :annuals, :YEN_net_assets, :float
    add_column :annuals, :BRL_net_assets, :float
  end

  def self.down
    remove_column :annuals, :USD_EBITDA
    remove_column :annuals, :USD_EBITDA 
    remove_column :annuals, :GBP_EBITDA 
    remove_column :annuals, :EUR_EBITDA 
    remove_column :annuals, :YEN_EBITDA 
    remove_column :annuals, :BRL_EBITDA 
    remove_column :annuals, :USD_net_assets
    remove_column :annuals, :GBP_net_assets
    remove_column :annuals, :EUR_net_assets
    remove_column :annuals, :YEN_net_assets
    remove_column :annuals, :BRL_net_assets
  end
end
