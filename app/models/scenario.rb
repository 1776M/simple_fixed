class Scenario < ActiveRecord::Base

    attr_accessible :name

    belongs_to :project
  
    has_many :actannuals
    has_many :actborrowings
    has_many :base_cases, :through => :project

    validates :name,       :presence => true
    validates :project_id, :presence => true


    def total_debt(id) 
        total = Actborrowing.find_by_sql(["Select * from Actborrowings where scenario_id=?",id])
    end

    
    def fixed_percent(id) 
        fixed = Actborrowing.find_by_sql(["Select * from Actborrowings where scenario_id=? and fixed_float=?",id,"fixed"])
    end


end
