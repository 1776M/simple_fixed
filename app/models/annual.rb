class Annual < ActiveRecord::Base

    attr_accessible :year_one, :year_two, :year_three, :year_four, :year_five, :year_six, :year_seven, :year_eight, :year_nine, :year_ten, 
		      :capex_one, :capex_two, :capex_three, :capex_four, :capex_five, :capex_six, :capex_seven, :capex_eight, :capex_nine, :capex_ten,
                    :rd_one, :rd_two, :rd_three, :rd_four, :rd_five, :rd_six, :rd_seven, :rd_eight, :rd_nine, :rd_ten,
		      :cashout_one, :cashout_two, :cashout_three, :cashout_four, :cashout_five, :cashout_six, :cashout_seven, :cashout_eight, :cashout_nine, :cashout_ten,
		      :cashin_one, :cashin_two, :cashin_three, :cashin_four, :cashin_five, :cashin_six, :cashin_seven, :cashin_eight, :cashin_nine, :cashin_ten,
		      :tax_rate, :dividend_policy, :ev_ebitda,
		      :assets, :cash, :liabs, :equity		
		
    belongs_to :basecase

    validates :year_one,     :presence => true
    validates :year_two,     :presence => true
    validates :year_three,     :presence => true
    validates :year_four,     :presence => true
    validates :year_five,     :presence => true
    validates :year_six,     :presence => true
    validates :year_seven,     :presence => true
    validates :year_eight,     :presence => true
    validates :year_nine,     :presence => true
    validates :year_ten,     :presence => true
    validates :basecase_id,  :presence => true

    validates :capex_one,     :presence => true
    validates :capex_two,     :presence => true
    validates :capex_three,     :presence => true
    validates :capex_four,     :presence => true
    validates :capex_five,     :presence => true
    validates :capex_six,     :presence => true
    validates :capex_seven,     :presence => true
    validates :capex_eight,     :presence => true
    validates :capex_nine,     :presence => true
    validates :capex_ten,     :presence => true

    validates :rd_one,     :presence => true
    validates :rd_two,     :presence => true
    validates :rd_three,     :presence => true
    validates :rd_four,     :presence => true
    validates :rd_five,     :presence => true
    validates :rd_six,     :presence => true
    validates :rd_seven,     :presence => true
    validates :rd_eight,     :presence => true
    validates :rd_nine,     :presence => true
    validates :rd_ten,     :presence => true

    validates :cashout_one,     :presence => true
    validates :cashout_two,     :presence => true
    validates :cashout_three,     :presence => true
    validates :cashout_four,     :presence => true
    validates :cashout_five,     :presence => true
    validates :cashout_six,     :presence => true
    validates :cashout_seven,     :presence => true
    validates :cashout_eight,     :presence => true
    validates :cashout_nine,     :presence => true
    validates :cashout_ten,     :presence => true

    validates :cashin_one,     :presence => true
    validates :cashin_two,     :presence => true
    validates :cashin_three,     :presence => true
    validates :cashin_four,     :presence => true
    validates :cashin_five,     :presence => true
    validates :cashin_six,     :presence => true
    validates :cashin_seven,     :presence => true
    validates :cashin_eight,     :presence => true
    validates :cashin_nine,     :presence => true
    validates :cashin_ten,     :presence => true

    validates :tax_rate,     :presence => true
    validates :dividend_policy,     :presence => true
    validates :ev_ebitda,     :presence => true

    validates :assets,     :presence => true
    validates :cash,     :presence => true
    validates :liabs,     :presence => true
    validates :equity,     :presence => true

end
