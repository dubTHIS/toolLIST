class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :work_phone, :string
    add_column :users, :personal_phone, :string
   	add_column :users, :address_phone, :string
  end
end
