class CreateAnnuals < ActiveRecord::Migration
  def self.up
    create_table :annuals do |t|
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
      t.integer :basecase_id
      t.timestamps
    end
      add_index :annuals, :basecase_id
  end

  def self.down
    drop_table :annuals
  end
end
