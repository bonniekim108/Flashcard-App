Wordnik.configure do |config|
  config.api_key = '12345abcde'               
  config.username = 'bozo'                    
  config.password = 'cl0wnt0wn'               
  config.response_format = 'json'             
  config.logger = Logger.new('/dev/null')     
end