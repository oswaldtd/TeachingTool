class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :sentence
      t.string :meaning
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
