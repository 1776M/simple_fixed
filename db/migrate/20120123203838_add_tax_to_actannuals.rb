class AddTaxToActannuals < ActiveRecord::Migration
  def self.up
    add_column :actannuals, :tax_rate, :float
    add_column :actannuals, :dividend_policy, :float
    add_column :actannuals, :ev_ebitda, :float
  end

  def self.down
    remove_column :actannuals, :ev_ebitda
    remove_column :actannuals, :dividend_policy
    remove_column :actannuals, :tax_rate
  end
end
