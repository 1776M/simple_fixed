class Basecase < ActiveRecord::Base

    attr_accessible :name

    belongs_to :group

    has_many :annuals
    has_many :borrowings

    validates :name,     :presence => true
    validates :group_id, :presence => true



end
