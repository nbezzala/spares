class Property < ActiveRecord::Base
  has_many :part_properties
  has_many :parts, :through => :part_properties
end
