class PartProperties < ActiveRecord::Migration
  def self.up
      t.references :part_id, 
                   :attribute_id

      t.timestamps

  end

  def self.down
    drop table part_properties
  end
end
