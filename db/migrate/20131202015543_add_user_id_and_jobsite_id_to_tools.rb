class AddUserIdAndJobsiteIdToTools < ActiveRecord::Migration
  def change
    add_column :tools, :user_id, :integer
    add_column :tools, :jobsite_id, :integer
    add_index :tools, :user_id
    add_index :tools, :jobsite_id
  end
end
