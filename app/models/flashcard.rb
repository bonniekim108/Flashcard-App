class Flashcard < ActiveRecord::Base

	belongs_to :user
	validates :content

	field :word, type: String
 	field :pronunciation, type: String
  	field :definition, type: String
  	field :notes, type: String



end