class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :brand_name
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
