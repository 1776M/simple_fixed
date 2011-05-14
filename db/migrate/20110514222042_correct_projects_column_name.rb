class CorrectProjectsColumnName < ActiveRecord::Migration
  def self.up
      rename_column :projects, :content, :project_name
  end

  def self.down
      rename_column :projects, :project_name, :content
  end
end
