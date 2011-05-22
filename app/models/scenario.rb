class Scenario < ActiveRecord::Base

    attr_accessible :name

    belongs_to :project
  
    has_many :actannuals
    has_many :actborrowings
    has_many :base_cases, :through => :project

    validates :name,       :presence => true
    validates :project_id, :presence => true


end
