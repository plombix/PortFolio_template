class AddTypeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :type, :integer
  end
end
