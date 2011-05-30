class Basecase < ActiveRecord::Base

    attr_accessible :name, :total_debt

    belongs_to :group

    has_many :annuals
    has_many :borrowings

    validates :name,     :presence => true
    validates :group_id, :presence => true


    def total_debt(id) 
        total = Borrowing.find_by_sql(["Select * from Borrowings where basecase_id=?",id])
    end

    
    def fixed_percent(id) 
        fixed = Borrowing.find_by_sql(["Select * from Borrowings where basecase_id=? and fixed_float=?",id,"fixed"])
    end

end
