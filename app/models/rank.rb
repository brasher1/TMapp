class Rank < ActiveRecord::Base
  has_many :members, :through => :members_ranks
   
end
