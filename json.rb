require "json"
require "open-uri" # a package to open a url and then read it

puts "What's your GitHub username?"
user_name = gets.chomp

# this is doing an API call
json = open("https://api.github.com/users/#{user_name}").read

# 'json' is a string from the internet, until its parsed
user = JSON.parse(json)
# from this, you get user as a hash

puts "Hi #{user["name"]}, your id is #{user["id"]}"



