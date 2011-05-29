class ChangeColumnNameActborrowings < ActiveRecord::Migration
  def self.up
      rename_column :actborrowings, :parent, :top_borrowing
  end

  def self.down
      rename_column :actborrowings, :top_borrowing, :parent
  end
end
