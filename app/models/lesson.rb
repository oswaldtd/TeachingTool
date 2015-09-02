class Lesson < ActiveRecord::Base
	has_many :vocabularies, dependent: :destroy
	has_many :sentences, dependent: :destroy
	has_many :books, dependent: :destroy
	accepts_nested_attributes_for :vocabularies, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :sentences, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :books, reject_if: :all_blank, allow_destroy: true

end
