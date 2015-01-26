require 'httparty'
require 'hashie'


#OMDBAPI

response = HTTParty.get 'http://api.wordnik.com:80/v4/word.json/fresh?useCanonical=false&includeSuggestions=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'
parsed  = JSON.parse response
@movie = Hashie::Mash.new parsed
p @movie


#FULLCONTACT

email = ""
FULLCONTACT_KEY = '4ec294d373be73c'

response = HTTParty.get 'https://api.fullcontact.com/v2/person.json', query: {email: email, apiKey: FULLCONTACT_KEY}
parsed = JSON.parse response
@fullcontact = Hashie::Mash.new parsed
p @fullcontact