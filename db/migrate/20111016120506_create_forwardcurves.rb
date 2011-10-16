class CreateForwardcurves < ActiveRecord::Migration
  def self.up
    create_table :forwardcurves do |t|
      t.string :currency
      t.float :term 
      t.float :year_one
      t.float :year_two
      t.float :year_three 
      t.float :year_four
      t.float :year_five
      t.float :year_six
      t.float :year_seven
      t.float :year_eight 
      t.float :year_nine
      t.float :year_ten
      t.timestamps
    end
  end

  def self.down
    drop_table :forwardcurves
  end
end
