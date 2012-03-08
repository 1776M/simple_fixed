class Choleskyir < ActiveRecord::Base


	attr_accessible :EBITDA_EBITDA, :EBITDA_EUR, :EBITDA_USD, :EBITDA_GBP, :EBITDA_YEN, :EBITDA_BRL,
			  :EUR_EBITDA, :EUR_EUR, :EUR_USD, :EUR_GBP, :EUR_YEN, :EUR_BRL, 
                       :USD_EBITDA, :USD_EUR, :USD_USD, :USD_GBP, :USD_YEN, :USD_BRL,
                       :GBP_EBITDA, :GBP_EUR, :GBP_USD, :GBP_GBP, :GBP_YEN, :GBP_BRL,
                       :YEN_EBITDA, :YEN_EUR, :YEN_USD, :YEN_GBP, :YEN_YEN, :YEN_BRL,
                       :BRL_EBITDA, :BRL_EUR, :BRL_USD, :BRL_GBP, :BRL_YEN, :BRL_BRL

       validates :EBITDA_EBITDA,   :presence => true
       validates :EBITDA_EUR,   :presence => true
       validates :EBITDA_USD,   :presence => true
       validates :EBITDA_GBP,   :presence => true
       validates :EBITDA_YEN,   :presence => true
       validates :EBITDA_BRL,   :presence => true

       validates :EUR_EBITDA,   :presence => true
       validates :EUR_EUR,   :presence => true
       validates :EUR_USD,   :presence => true
       validates :EUR_GBP,   :presence => true
       validates :EUR_YEN,   :presence => true
       validates :EUR_BRL,   :presence => true

       validates :USD_EBITDA,   :presence => true
       validates :USD_EUR,   :presence => true
       validates :USD_USD,   :presence => true
       validates :USD_GBP,   :presence => true
       validates :USD_YEN,   :presence => true
       validates :USD_BRL,   :presence => true

       validates :GBP_EBITDA,   :presence => true
       validates :GBP_EUR,   :presence => true
       validates :GBP_USD,   :presence => true
       validates :GBP_GBP,   :presence => true
       validates :GBP_YEN,   :presence => true
       validates :GBP_BRL,   :presence => true

       validates :YEN_EBITDA,   :presence => true
       validates :YEN_EUR,   :presence => true
       validates :YEN_USD,   :presence => true
       validates :YEN_GBP,   :presence => true
       validates :YEN_YEN,   :presence => true
       validates :YEN_BRL,   :presence => true

       validates :BRL_EBITDA,   :presence => true
       validates :BRL_EUR,   :presence => true
       validates :BRL_USD,   :presence => true
       validates :BRL_GBP,   :presence => true
       validates :BRL_YEN,   :presence => true
       validates :BRL_BRL,   :presence => true

end
