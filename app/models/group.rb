class Group < ActiveRecord::Base

    attr_accessible :group_name

    has_many :users, :dependent => :destroy

    validates :group_name, :presence => true,
                           :uniqueness => { :case_sensitive => false } 

end
