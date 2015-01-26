class Wordnik

  #def self.get_words(word)
  #query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5"}
   # response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/fresh?useCanonical=false&includeSuggestions=false", query: query
    #return response
  #end

  def self.get_definitions(word)
  query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 3, sourceDictionaries: "ahd"} 
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/definitions?includeRelated=true&useCanonical=false&includeTags=false", query: query
    return response
    if response.save
      redirect_to flashcards_path
  end

  # def self.get_pronunciations(word)
  #   query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 1} # sourceDictionary: "ahd"
  #   response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/pronunciations?useCanonical=false", query: query
  #   return response
  # end

  # def self.get_related_words(word)
  #   query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limitPerRelationshipType: 2, relationshipTypes: "synonym", sourceDictionaries: "ahd"}
  #   response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/relatedWords?useCanonical=false", query: query
  #   return response
  # end

  #  def self.get_related_words(word)
  #   query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limitPerRelationshipType: 2, relationshipTypes: "antonym", sourceDictionaries: "ahd"}
  #   response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/relatedWords?useCanonical=false", query: query
  #   return response
  # end

end

