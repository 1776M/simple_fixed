class AddNameToCoredata < ActiveRecord::Migration
  def self.up
    add_column :coredata, :name, :string, :default => 'Core data'
  end

  def self.down
    remove_column :coredata, :name
  end
end
