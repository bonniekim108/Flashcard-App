class Wordnik
  include Mongoid::Document

validate :valid_entry
validates :word, :presence => true

  # responses from Wordnik API
  def self.get_definitions(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 1, 
    sourceDictionaries: "ahd"} 
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/definitions?includeRelated=true&useCanonical=false&includeTags=false", query: query
    return response
  end

  def self.get_examples(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 1}
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false", query: query
    return response
  end

  def valid_entry
    # shows error if user didn't enter a word
    if word.blank?
      errors.add(:word, "Please enter a word.")
    # shows error if word is not a valid entry and/or doesn't exist in database
    elsif !Word.exists?(word: word) && Wordnik.word.get_definitions(word).empty?
      errors.add(:word, "Sorry, no information for #{word}.")
    end
  end

  def upcase
  end

end



