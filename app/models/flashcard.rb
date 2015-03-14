class Flashcard
  include Mongoid::Document

	belongs_to :user
	validates :word, presence: true
	field :word, type: String
	field :examples, type: String
	field :definition, type: String
	field :related_words, type: String

end