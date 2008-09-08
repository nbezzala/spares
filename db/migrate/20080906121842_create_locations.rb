class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :company_id
      t.string :line1, :limit => 100
      t.string :line2, :limit => 100
      t.string :city, :limit => 100
      t.string :state, :limit => 50
      t.string :pin, :limit => 10
      t.string :country, :limit => 50 

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
