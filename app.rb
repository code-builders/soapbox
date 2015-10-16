require_relative 'bubble'
require "colorize"

username = ""

a = 0
while a < 1
  puts "What is your username?"
    username = gets.chomp.downcase.to_s
    user = Bubble.new(username: username)
    a += 1
end

body = ""

d = Dir.glob("/Users/Chris/Dropbox/SoapBox/*")
  d.each do |file|
    r = File.open(file)
    answers = {
      body: File.basename(file),
      username: r.read,
      created_at: r.birthtime.strftime("%b %e, %l:%M %p")
    }
    nb = Bubble.new(answers)
    puts nb.formatted_string
end

body = ""
bubbles = []

while body.downcase != "exit"
  puts "What would you like to Bubble? (Type \"exit\" to end program)"
  body = gets.chomp

  if body.downcase != "exit"
    t = Bubble.new(created_at: Time.now)
    body1 = Bubble.new(username: username, body: body)
    body2 = body1.body + " \n" + t.created_at.strftime("%A, %d %b %Y %l:%M %p").to_s
    bubbles.push(body2)
    body1.write_file
  end
end

# puts user.username.capitalize.blue
# answers = {
#   username: files.open
# }
#
#
# puts bubbles.formatted_string
