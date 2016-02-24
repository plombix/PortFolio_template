class AddProviderToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :provider, index: true, foreign_key: true
  end
end
