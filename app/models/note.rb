class Note
  include Mongoid::Document
  field :body, type: String
  belongs_to :flashcard
end
