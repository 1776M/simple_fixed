class Fxrate < ActiveRecord::Base

    attr_accessible :currency_pair, :fx_rate 

    validates :currency_pair,     :presence => true
    validates :fx_rate,           :presence => true
    
end
