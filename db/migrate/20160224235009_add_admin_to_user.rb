class AddAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :integer
  end
end
