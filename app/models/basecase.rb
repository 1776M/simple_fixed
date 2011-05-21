class Basecase < ActiveRecord::Base

    attr_accessible :name

    belongs_to :group

    validates :name,     :presence => true
    validates :group_id, :presence => true



end
