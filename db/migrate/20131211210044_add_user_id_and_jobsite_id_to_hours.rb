class AddUserIdAndJobsiteIdToHours < ActiveRecord::Migration
  def change
    add_column :hours, :user_id, :integer
    add_column :hours, :jobsite_id, :integer
    add_index :hours, :user_id
    add_index :hours, :jobsite_id
  end
end
