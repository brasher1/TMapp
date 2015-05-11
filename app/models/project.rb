class Project < ActiveRecord::Base
  belongs_to :book
  has_many :members, :through => :members_projects
 
 def project_book_name
   "#{name} - #{book.name}"
 end 
end
