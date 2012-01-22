class CreateActannualsAgain < ActiveRecord::Migration
   def self.up
    create_table :actannuals do |t|
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
      t.float :capex_one
      t.float :capex_two
      t.float :capex_three
      t.float :capex_four
      t.float :capex_five
      t.float :capex_six
      t.float :capex_seven
      t.float :capex_eight
      t.float :capex_nine
      t.float :capex_ten
      t.float :rd_one
      t.float :rd_two
      t.float :rd_three
      t.float :rd_four
      t.float :rd_five
      t.float :rd_six
      t.float :rd_seven
      t.float :rd_eight
      t.float :rd_nine
      t.float :rd_ten
      t.float :cashout_one
      t.float :cashout_two
      t.float :cashout_three
      t.float :cashout_four
      t.float :cashout_five
      t.float :cashout_six
      t.float :cashout_seven
      t.float :cashout_eight
      t.float :cashout_nine
      t.float :cashout_ten
      t.float :cashin_one
      t.float :cashin_two
      t.float :cashin_three
      t.float :cashin_four
      t.float :cashin_five
      t.float :cashin_six
      t.float :cashin_seven
      t.float :cashin_eight
      t.float :cashin_nine
      t.float :cashin_ten

      t.integer :scenario_id
      t.timestamps
    end
      add_index :actannuals, :scenario_id
  end

  def self.down
    drop_table :actannuals
  end
end
