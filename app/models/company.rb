class Company < ActiveRecord::Base

  validates_presence_of :name 
  
  belongs_to :created_by,
    :class_name => 'User',
    :foreign_key => 'created_by'
    
  belongs_to :updated_by,
    :class_name=> 'User',
    :foreign_key => 'updated_by'
    
  belongs_to :location
  
end
