class Member < ActiveRecord::Base
    has_many  :projects, :through => :members_projects
    has_many  :ranks, :through => :members_ranks
    
    validates :firstname, :presence => true
    
def first_and_lastname
  "#{firstname} #{lastname}"
end

end
