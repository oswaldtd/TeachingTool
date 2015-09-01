class Lesson < ActiveRecord::Base
	has_many :vocabularies, dependent: :destroy
	has_many :sentences, dependent: :destroy
	has_many :books, dependent: :destroy
end
