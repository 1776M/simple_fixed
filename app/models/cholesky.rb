class Cholesky < ActiveRecord::Base

	attr_accessible :USD_USD_EBITDA, :USD_GBP_EBITDA, :USD_EUR_EBITDA, :USD_YEN_EBITDA, :USD_BRL_EBITDA, :USD_fx12_EBITDA, :USD_fx13_EBITDA, :USD_fx14_EBITDA, :USD_fx15_EBITDA,
			  :EUR_USD_EBITDA, :EUR_GBP_EBITDA, :EUR_EUR_EBITDA, :EUR_YEN_EBITDA, :EUR_BRL_EBITDA, :EUR_fx12_EBITDA, :EUR_fx13_EBITDA, :EUR_fx14_EBITDA, :EUR_fx15_EBITDA,
                       :GBP_USD_EBITDA, :GBP_GBP_EBITDA, :GBP_EUR_EBITDA, :GBP_YEN_EBITDA, :GBP_BRL_EBITDA, :GBP_fx12_EBITDA, :GBP_fx13_EBITDA, :GBP_fx14_EBITDA, :GBP_fx15_EBITDA,
                       :YEN_USD_EBITDA, :YEN_GBP_EBITDA, :YEN_EUR_EBITDA, :YEN_YEN_EBITDA, :YEN_BRL_EBITDA, :YEN_fx12_EBITDA, :YEN_fx13_EBITDA, :YEN_fx14_EBITDA, :YEN_fx15_EBITDA, 
                       :BRL_USD_EBITDA, :BRL_GBP_EBITDA, :BRL_EUR_EBITDA, :BRL_YEN_EBITDA, :BRL_BRL_EBITDA, :BRL_fx12_EBITDA, :BRL_fx13_EBITDA, :BRL_fx14_EBITDA, :BRL_fx15_EBITDA,
                       :fx12_USD_EBITDA, :fx12_GBP_EBITDA, :fx12_EUR_EBITDA, :fx12_YEN_EBITDA, :fx12_BRL_EBITDA, :fx12_fx12_EBITDA, :fx12_fx13_EBITDA, :fx12_fx14_EBITDA, :fx12_fx15_EBITDA,
                       :fx13_USD_EBITDA, :fx13_GBP_EBITDA, :fx13_EUR_EBITDA, :fx13_YEN_EBITDA, :fx13_BRL_EBITDA, :fx13_fx12_EBITDA, :fx13_fx13_EBITDA, :fx13_fx14_EBITDA, :fx13_fx15_EBITDA,
                       :fx14_USD_EBITDA, :fx14_GBP_EBITDA, :fx14_EUR_EBITDA, :fx14_YEN_EBITDA, :fx14_BRL_EBITDA, :fx14_fx12_EBITDA, :fx14_fx13_EBITDA, :fx14_fx14_EBITDA, :fx14_fx15_EBITDA,
                       :fx15_USD_EBITDA, :fx15_GBP_EBITDA, :fx15_EUR_EBITDA, :fx15_YEN_EBITDA, :fx15_BRL_EBITDA, :fx15_fx12_EBITDA, :fx15_fx13_EBITDA, :fx15_fx14_EBITDA, :fx15_fx15_EBITDA 

       validates :USD_USD_EBITDA,   :presence => true
       validates :USD_GBP_EBITDA,   :presence => true
       validates :USD_EUR_EBITDA,   :presence => true
       validates :USD_YEN_EBITDA,   :presence => true
       validates :USD_BRL_EBITDA,   :presence => true
       validates :USD_fx12_EBITDA,   :presence => true
       validates :USD_fx13_EBITDA,   :presence => true
       validates :USD_fx14_EBITDA,   :presence => true
       validates :USD_fx15_EBITDA,   :presence => true

       validates :EUR_USD_EBITDA,   :presence => true
       validates :EUR_GBP_EBITDA,   :presence => true
       validates :EUR_EUR_EBITDA,   :presence => true
       validates :EUR_YEN_EBITDA,   :presence => true
       validates :EUR_BRL_EBITDA,   :presence => true
       validates :EUR_fx12_EBITDA,   :presence => true
       validates :EUR_fx13_EBITDA,   :presence => true
       validates :EUR_fx14_EBITDA,   :presence => true
       validates :EUR_fx15_EBITDA,   :presence => true
       
       validates :GBP_USD_EBITDA,   :presence => true
       validates :GBP_GBP_EBITDA,   :presence => true
       validates :GBP_EUR_EBITDA,   :presence => true
       validates :GBP_YEN_EBITDA,   :presence => true
       validates :GBP_BRL_EBITDA,   :presence => true
       validates :GBP_fx12_EBITDA,   :presence => true
       validates :GBP_fx13_EBITDA,   :presence => true
       validates :GBP_fx14_EBITDA,   :presence => true
       validates :GBP_fx15_EBITDA,   :presence => true

       validates :YEN_USD_EBITDA,   :presence => true
       validates :YEN_GBP_EBITDA,   :presence => true
       validates :YEN_EUR_EBITDA,   :presence => true
       validates :YEN_YEN_EBITDA,   :presence => true
       validates :YEN_BRL_EBITDA,   :presence => true
       validates :YEN_fx12_EBITDA,   :presence => true
       validates :YEN_fx13_EBITDA,   :presence => true
       validates :YEN_fx14_EBITDA,   :presence => true
       validates :YEN_fx15_EBITDA,   :presence => true

       validates :BRL_USD_EBITDA,   :presence => true
       validates :BRL_GBP_EBITDA,   :presence => true
       validates :BRL_EUR_EBITDA,   :presence => true
       validates :BRL_YEN_EBITDA,   :presence => true
       validates :BRL_BRL_EBITDA,   :presence => true
       validates :BRL_fx12_EBITDA,   :presence => true
       validates :BRL_fx13_EBITDA,   :presence => true
       validates :BRL_fx14_EBITDA,   :presence => true
       validates :BRL_fx15_EBITDA,   :presence => true       

       validates :fx12_USD_EBITDA,   :presence => true
       validates :fx12_GBP_EBITDA,   :presence => true
       validates :fx12_EUR_EBITDA,   :presence => true
       validates :fx12_YEN_EBITDA,   :presence => true
       validates :fx12_BRL_EBITDA,   :presence => true
       validates :fx12_fx12_EBITDA,   :presence => true
       validates :fx12_fx13_EBITDA,   :presence => true
       validates :fx12_fx14_EBITDA,   :presence => true
       validates :fx12_fx15_EBITDA,   :presence => true       

       validates :fx13_USD_EBITDA,   :presence => true
       validates :fx13_GBP_EBITDA,   :presence => true
       validates :fx13_EUR_EBITDA,   :presence => true
       validates :fx13_YEN_EBITDA,   :presence => true
       validates :fx13_BRL_EBITDA,   :presence => true
       validates :fx13_fx12_EBITDA,   :presence => true
       validates :fx13_fx13_EBITDA,   :presence => true
       validates :fx13_fx14_EBITDA,   :presence => true
       validates :fx13_fx15_EBITDA,   :presence => true

       validates :fx14_USD_EBITDA,   :presence => true
       validates :fx14_GBP_EBITDA,   :presence => true
       validates :fx14_EUR_EBITDA,   :presence => true
       validates :fx14_YEN_EBITDA,   :presence => true
       validates :fx14_BRL_EBITDA,   :presence => true
       validates :fx14_fx12_EBITDA,   :presence => true
       validates :fx14_fx13_EBITDA,   :presence => true
       validates :fx14_fx14_EBITDA,   :presence => true
       validates :fx14_fx15_EBITDA,   :presence => true

       validates :fx15_USD_EBITDA,   :presence => true
       validates :fx15_GBP_EBITDA,   :presence => true
       validates :fx15_EUR_EBITDA,   :presence => true
       validates :fx15_YEN_EBITDA,   :presence => true
       validates :fx15_BRL_EBITDA,   :presence => true
       validates :fx15_fx12_EBITDA,   :presence => true
       validates :fx15_fx13_EBITDA,   :presence => true
       validates :fx15_fx14_EBITDA,   :presence => true
       validates :fx15_fx15_EBITDA,   :presence => true

end
