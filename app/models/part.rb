class Part < ActiveRecord::Base

  validates_presence_of :name 
  validates_presence_of :category 
  
  belongs_to :category
  
  belongs_to :created_by,
    :class_name => 'User',
    :foreign_key => 'created_by'
    
  belongs_to :updated_by,
    :class_name=> 'User',
    :foreign_key => 'updated_by'
    

  
  has_many :part_properties
  has_many :properties, :through => :part_properties
  
end
