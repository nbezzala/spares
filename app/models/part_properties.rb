class PartProperty < ActiveRecord::Base
  belongs_to :part
  belongs_to :property
end
