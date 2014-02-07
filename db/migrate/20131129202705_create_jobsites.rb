class CreateJobsites < ActiveRecord::Migration
  def change
    create_table :jobsites do |t|
      t.integer :jobno
      t.string :name
      t.string :location
      t.boolean :active
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
