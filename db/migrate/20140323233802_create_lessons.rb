class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :level, null: false
      t.string :category, null: false
      t.string :location, null: false
      t.datetime :datetime, null: false

      t.timestamps
    end
  end
end
