class ChangeDatetimeToDateInHours < ActiveRecord::Migration
  def up
  	change_column :hours, :date, :date
  end

  def down
  	change_column :hours, :date, :datetime
  end
end
