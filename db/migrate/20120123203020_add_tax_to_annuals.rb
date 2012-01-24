class AddTaxToAnnuals < ActiveRecord::Migration
  def self.up
    add_column :annuals, :tax_rate, :float
    add_column :annuals, :dividend_policy, :float
    add_column :annuals, :ev_ebitda, :float
  end

  def self.down
    remove_column :annuals, :ev_ebitda
    remove_column :annuals, :dividend_policy
    remove_column :annuals, :tax_rate
  end
end
