class WordnikController < ApplicationController



  def self.get_definitions(word)
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false", query: {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limit: 3, sourceDictionaries: "ahd"}
    return response
  end

  def self.get_pronunciations(word)
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50", query: {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", sourceDictionary: "ahd", limit: 1}
    return response
  end

  def self.get_related_words(word)
    response = HTTParty.get "http://api.wordnik.com:80/v4/word.json/#{word}/relatedWords?useCanonical=false&limitPerRelationshipType=10", query: {api_key: "a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5", limitPerRelationshipType: 3, relationshipTypes: "synonym"}
    return response
  end

end
