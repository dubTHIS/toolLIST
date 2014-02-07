class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.datetime :date
      t.integer :total

      t.timestamps
    end
  end
end
