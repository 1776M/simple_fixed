class CreateCoredata < ActiveRecord::Migration
  def self.up
    create_table :coredata do |t|
      t.integer :group_id

      t.timestamps
    end
      add_index :coredata, :group_id 
  end

  def self.down
    drop_table :coredata
  end
end
