require_relative 'bubble'

username = ""

while username.downcase != "exit"
  a = 0
    while a < 1
    puts "What is your username?"
      username = gets.chomp.downcase.to_s
      user = SoapBox.new(username: username)
      a += 1
      if username.downcase == "exit"
      end
    end

  puts "What would you like to Bubble?"
  body = ""
  t = Time.now
    while a < 2
      body = gets.chomp.to_s
      body1 = SoapBox.new(body: body)
      a += 1
    end

  body2 = body1.body + " " + t.to_s
  bubbles = []
  bubbles.push(body2)

  puts user.username.capitalize
  puts bubbles

  if username == "exit" || body == "exit"
  end
end
