class CreatePartProperties < ActiveRecord::Migration
  def self.up
    create_table :part_properties do |t|

      t.references :part 
      t.references :property
  
      t.timestamps
    end           #create table ends here
  end             #def ends here

  def self.down
    drop_table :part_properties
  end
  
end               #class ends here
