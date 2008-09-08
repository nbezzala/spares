class AddCompanyLocation < ActiveRecord::Migration
  def self.up
    add_column :companies, :location_id, :integer
      
  end

  def self.down
    remove_column :companies, :location_id
  end
end
