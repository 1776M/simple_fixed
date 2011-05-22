class CreateScenarios < ActiveRecord::Migration
  def self.up
    create_table :scenarios do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
     add_index :scenarios, :project_id
  end

  def self.down
    drop_table :scenarios
  end
end
