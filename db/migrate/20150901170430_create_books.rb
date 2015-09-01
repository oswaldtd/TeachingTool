class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :page_start
      t.integer :page_end
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
