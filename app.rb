require_relative 'bubble'
require "colorize"


File.open("/Users/Chris/Code/class_projects/soapbox/soapbox/.soapbox", "w") do |file|
  file << "@chris"
end

login_prompt = ""

file = File.open("/Users/Chris/Code/class_projects/soapbox/soapbox/.soapbox")
username_files = file.read
puts "Continue as #{username_files} or press [n] to login as a different user."
login_prompt = gets.chomp.downcase
  if login_prompt == "n"
    puts "What is your username?"
    username = gets.chomp.downcase.to_s
    user = Bubble.new(username: username)
    user.save_user
  else
    username = "@chris"
    user = Bubble.new(username: username)
    user.save_user
  end

body = ""

def entire_feed
  d = Dir.glob("/Users/Chris/Dropbox/SoapBox/*")
  d.map do |file|
    r = File.open(file)
    answers = {
      body: File.basename(file),
      username: r.read,
      created_at: r.birthtime.strftime("%b %e, %l:%M %p")
    }
    nb = Bubble.new(answers)
  end
end

def sorted_feed
  newest_last_feed = entire_feed.sort_by do |x|
    x.created_at
  end
  newest_last_feed.reverse.first(10)
end

body = ""
bubbles = []
options = ""

while options != "e"
  puts "What would you like to Bubble?"      # Add the sort_by method
  body = gets.chomp
  my_bubble = Bubble.new(username: username, body: body, created_at: Time.now)
  bubbles.push(my_bubble)
  puts "would you like to post [p], refresh your feed [r], or exit [e]?"
  options = gets.chomp
  if options.downcase == "p"
    my_bubble.save
  elsif options.downcase == "e"
    break
  else
    sorted_feed.each do |feed|
      puts feed.formatted_string
    end
  end
end

puts "Good-bye"
