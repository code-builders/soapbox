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
bubbles = []

while body.downcase != "exit"
  puts "What would you like to Bubble? (Type \"exit\" to end program)"
  body = gets.chomp

  if body.downcase != "exit"
    t = SoapBox.new(created_at: Time.now)
    body1 = SoapBox.new(username: username, body: body)
    body2 = body1.body + " \n" + t.created_at.strftime("%A, %d %b %Y %l:%M %p").to_s
    bubbles.push(body2)
    puts body1.write_file
  end

puts user.username.capitalize
puts bubbles

end
