class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :meaning
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
