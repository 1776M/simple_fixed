class CreateBorrowings < ActiveRecord::Migration
  def self.up
    create_table :borrowings do |t|
      t.float :size
      t.float :coupon
      t.integer :issue_year      
      t.integer :maturity_year
      t.string :fixed_float      
      t.string :currency  
      t.integer :basecase_id
      t.timestamps
    end
     add_index :borrowings, :basecase_id
  end

  def self.down
    drop_table :borrowings
  end
end
