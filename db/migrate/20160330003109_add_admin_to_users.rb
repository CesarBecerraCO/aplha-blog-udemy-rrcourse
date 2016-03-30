class AddAdminToUsers < ActiveRecord::Migration
  def change
    #Add this, by default all users set to false (as admin)
    add_column :users, :admin, :boolean, default: false
  end
end
