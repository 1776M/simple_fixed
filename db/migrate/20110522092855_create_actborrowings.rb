class CreateActborrowings < ActiveRecord::Migration
  def self.up
    create_table :actborrowings do |t|
      t.float :size
      t.float :coupon
      t.integer :issue_year      
      t.integer :maturity_year
      t.string :fixed_float      
      t.string :currency 
      t.integer :scenario_id
      t.timestamps
    end
     add_index :actborrowings, :scenario_id
  end

  def self.down
    drop_table :actborrowings
  end
end
