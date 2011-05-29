class AddParentToActborrowings < ActiveRecord::Migration
  def self.up
    add_column :actborrowings, :parent, :integer
  end

  def self.down
    remove_column :actborrowings, :parent
  end
end
