class MembersRank < ActiveRecord::Base
  belongs_to :member
  belongs_to :ranks
end
