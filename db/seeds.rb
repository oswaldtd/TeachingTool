20.times do
	lesson = Lesson.create!(lesson_name: Faker::App.name, lesson_number: Faker::Number.number(3))
	2.times do
		Book.create!(book_name: Faker::App.name, page_start: Faker::Number.number(2), page_end: Faker::Number.number(3), lesson: lesson)
	end
	2.times do
		Sentence.create!(sentence: Faker::Lorem.sentence ,meaning: Faker::Lorem.sentence, lesson: lesson)
	end
	10.times do
		Vocabulary.create!(word: Faker::Lorem.word,meaning: Faker::Lorem.word, lesson: lesson)
	end
end
