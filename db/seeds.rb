# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lesson.delete_all
Book.delete_all
Sentence.delete_all
Vocabulary.delete_all
i=1
while i < 20
	Lesson.create(lesson_name: Faker::App.name, lesson_number: Faker::Number.number(3), id:"#{i}")
	2.times do
		Book.create(book_name: Faker::App.name, page_start: Faker::Number.number(2), page_end: Faker::Number.number(3), lesson_id:"#{i}")
	end
	2.times do
		Sentence.create(sentence: Faker::Lorem.sentence ,meaning: Faker::Lorem.sentence, lesson_id:"#{i}")
	end
	10.times do
		Vocabulary.create(word: Faker::Lorem.word,meaning: Faker::Lorem.word, lesson_id:"#{i}")
	end
	i+=1
end

# create_table "books", force: :cascade do |t|
# 	t.string   "book_name"
# 	t.string   "page_start"
# 	t.string   "page_end"
# 	t.integer  "lesson_id"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# end
#
# create_table "sentences", force: :cascade do |t|
# 	t.string   "sentence"
# 	t.string   "meaning"
# 	t.integer  "lesson_id"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# end
#
# create_table "vocabularies", force: :cascade do |t|
# 	t.string   "word"
# 	t.string   "meaning"
# 	t.integer  "lesson_id"
# 	t.datetime "created_at", null: false
# 	t.datetime "updated_at", null: false
# end
