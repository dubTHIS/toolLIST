class AddCategoryToTools < ActiveRecord::Migration
  def change
    add_column :tools, :category, :integer
  end
end
