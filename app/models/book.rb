class Book < ActiveRecord::Base
  has_many :projects
  
end
