class Team < ActiveRecord::Base
   validates_uniqueness_of :member_1, :case_sensitive => false
     validates_uniqueness_of :member_2, :case_sensitive => false
     validates_presence_of :member_1, :case_sensitive => false
      validates_presence_of :member_2, :case_sensitive => false
        validates_uniqueness_of :name, :case_sensitive => false
               validates_presence_of :name, :case_sensitive => false
end
