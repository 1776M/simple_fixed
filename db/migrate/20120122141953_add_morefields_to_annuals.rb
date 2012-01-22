class AddMorefieldsToAnnuals < ActiveRecord::Migration
  def self.up
    add_column :annuals, :capex_one, :float
    add_column :annuals, :capex_two, :float
    add_column :annuals, :capex_three, :float
    add_column :annuals, :capex_four, :float
    add_column :annuals, :capex_five, :float
    add_column :annuals, :capex_six, :float
    add_column :annuals, :capex_seven, :float
    add_column :annuals, :capex_eight, :float
    add_column :annuals, :capex_nine, :float
    add_column :annuals, :capex_ten, :float
    add_column :annuals, :rd_one, :float
    add_column :annuals, :rd_two, :float
    add_column :annuals, :rd_three, :float
    add_column :annuals, :rd_four, :float
    add_column :annuals, :rd_five, :float
    add_column :annuals, :rd_six, :float
    add_column :annuals, :rd_seven, :float
    add_column :annuals, :rd_eight, :float
    add_column :annuals, :rd_nine, :float
    add_column :annuals, :rd_ten, :float
    add_column :annuals, :cashout_one, :float
    add_column :annuals, :cashout, :float
    add_column :annuals, :cashout_three, :float
    add_column :annuals, :cashout_four, :float
    add_column :annuals, :cashout_five, :float
    add_column :annuals, :cashout_six, :float
    add_column :annuals, :cashout_seven, :float
    add_column :annuals, :cashout_eight, :float
    add_column :annuals, :cashout_nine, :float
    add_column :annuals, :cashout_ten, :float
    add_column :annuals, :cashin_one, :float
    add_column :annuals, :cashin, :float
    add_column :annuals, :cashin_three, :float
    add_column :annuals, :cashin_four, :float
    add_column :annuals, :cashin_five, :float
    add_column :annuals, :cashin_six, :float
    add_column :annuals, :cashin_seven, :float
    add_column :annuals, :cashin_eight, :float
    add_column :annuals, :cashin_nine, :float
    add_column :annuals, :cashin_ten, :float


  end

  def self.down
    remove_column :annuals, :capex_one
    remove_column :annuals, :capex_two
    remove_column :annuals, :capex_three
    remove_column :annuals, :capex_four
    remove_column :annuals, :capex_five
    remove_column :annuals, :capex_six
    remove_column :annuals, :capex_seven
    remove_column :annuals, :capex_eight
    remove_column :annuals, :capex_nine
    remove_column :annuals, :capex_ten
    remove_column :annuals, :rd_one
    remove_column :annuals, :rd_two
    remove_column :annuals, :rd_three
    remove_column :annuals, :rd_four
    remove_column :annuals, :rd_five
    remove_column :annuals, :rd_six
    remove_column :annuals, :rd_seven
    remove_column :annuals, :rd_eight
    remove_column :annuals, :rd_nine
    remove_column :annuals, :rd_ten
    remove_column :annuals, :cashout_one
    remove_column :annuals, :cashout_two
    remove_column :annuals, :cashout_three
    remove_column :annuals, :cashout_four
    remove_column :annuals, :cashout_five
    remove_column :annuals, :cashout_six
    remove_column :annuals, :cashout_seven
    remove_column :annuals, :cashout_eight
    remove_column :annuals, :cashout_nine
    remove_column :annuals, :cashout_ten
    remove_column :annuals, :cashin_one
    remove_column :annuals, :cashin_two
    remove_column :annuals, :cashin_three
    remove_column :annuals, :cashin_four
    remove_column :annuals, :cashin_five
    remove_column :annuals, :cashin_six
    remove_column :annuals, :cashin_seven
    remove_column :annuals, :cashin_eight
    remove_column :annuals, :cashin_nine
    remove_column :annuals, :cashin_ten
  end
end
