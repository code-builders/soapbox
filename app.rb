require_relative 'bubble'

username = ""

a = 0
while a < 1
  puts "What is your username?"
    username = gets.chomp.downcase.to_s
    user = SoapBox.new(username: username)
    a += 1
end

body = ""

while body.downcase != "exit"
  puts "What would you like to Bubble?"
  body = gets.chomp

  if body.downcase != "exit"
    t = SoapBox.new(created_at: Time.now)
    body1 = SoapBox.new(body: body)

    body2 = body1.body + " " + t.created_at.to_s
    bubbles = []
    bubbles.push(body2)

    puts user.username.capitalize
    puts bubbles
  end
end
