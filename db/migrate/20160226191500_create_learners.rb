class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.string :name 
      t.string :notes
      t.string :role ,default: 0
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
