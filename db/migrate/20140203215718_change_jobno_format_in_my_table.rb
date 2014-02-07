class ChangeJobnoFormatInMyTable < ActiveRecord::Migration
  def up
  	change_column :jobsites, :jobno, :string
  end

  def down
  	change_column :jobsites, :jobno, :integer
  end
end
