class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :lesson_name
      t.string :lesson_number

      t.timestamps null: false
    end
  end
end
