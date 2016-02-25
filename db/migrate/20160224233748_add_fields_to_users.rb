class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :subscribe, :integer
    add_column :users, :gender, :integer
    add_column :users, :adress, :string
    add_column :users, :citycode, :integer
    add_column :users, :city, :string
  end
end
