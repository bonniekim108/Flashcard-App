class Flashcard
  include Mongoid::Document

	belongs_to :user
  has_many :notes
	validates :word, presence: true

	field :word, type: String
	field :pronunciation, type: String
	field :definition, type: String
	field :related_words, type: String
	field :notes, type: String

end