class AddConditionToTools < ActiveRecord::Migration
  def change
    add_column :tools, :condition, :boolean, :default => true
  end
end
