class Category < ActiveRecord::Base
 
  validates_presence_of :name 
 
  has_many :parts
  
  has_one :parent,
     :class_name => 'Category',
     :foreign_key => 'parent_id'

  belongs_to :parent,
     :class_name => 'Category',
     :foreign_key => 'parent_id'
   
  belongs_to :created_by,
    :class_name => 'User',
    :foreign_key => 'created_by'
    
  belongs_to :updated_by,
    :class_name=> 'User',
    :foreign_key => 'updated_by'
    
end
