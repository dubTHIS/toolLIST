class AddHrsOfOpToJobsites < ActiveRecord::Migration
  def change
    add_column :jobsites, :hrs_of_op, :string
  end
end
