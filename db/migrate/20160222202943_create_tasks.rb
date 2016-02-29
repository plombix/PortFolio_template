class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :comment
      t.time :duration
      t.datetime :due_date
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
