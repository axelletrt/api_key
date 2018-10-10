require 'twitter'
require 'pry'
require 'dotenv'

#ceci appelle le fichier.env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV
Dotenv.load 

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        =  ENV["twitter.consumer_key"]
  config.consumer_secret     = ENV["twitter.consumer_secret"]
  config.access_token        = ENV["twitter.access_token"]
  config.access_token_secret = ENV["twitter.access_token_secret"]
end

p client 
client.update('Mon premier tweet en ruby')





