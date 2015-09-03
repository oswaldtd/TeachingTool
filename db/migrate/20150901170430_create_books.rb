class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :page_start
      t.string :page_end
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
