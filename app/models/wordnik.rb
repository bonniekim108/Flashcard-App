class Wordnik

  # def self.get_words(word)
  #   query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 200, sourceDictionaries: "ahd"}
  #   response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/definitions?includeRelated=true&useCanonical=false&includeSuggestions=false", query: query
  #   return response
  # end

  def self.get_definitions(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 2, 
    sourceDictionaries: "ahd"} 
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/definitions?includeRelated=true&useCanonical=false&includeTags=false", query: query
    return response
  end

  def self.get_examples(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 2}
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false", query: query
    return response
  end

  def self.get_related_words(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limitPerRelationshipType: 3, relationshipTypes: "synonym"}
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/relatedWords?useCanonical=false", query: query
    return response
  end


  def self.get_related_words(word)
    query = {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limitPerRelationshipType: 3, relationshipTypes: "antonym"}
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/relatedWords?useCanonical=false", query: query
    return response
  end
end



