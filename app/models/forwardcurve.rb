class Forwardcurve < ActiveRecord::Base

    attr_accessible :currency, :term, :year_one, :year_two, :year_three, :year_four, :year_five, :year_six, :year_seven, :year_eight, :year_nine, :year_ten 

    validates :currency,  :presence => true
    validates :term,      :presence => true
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

end
