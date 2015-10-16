require "colorize"

class Bubble

  attr_accessor :username,
                :body,
                :created_at
                :files

  def initialize(attrs={})
    @username     = attrs[:username]
    @body         = attrs[:body]
    @created_at   = attrs[:created_at]
    @files        = attrs[:files]
  end

  def formatted_string
      "#{username.light_red}:  #{body}
         #{created_at}
      ------------------------------------------------------------------------"
  end


  def self.read_all
    Dir.glob("/Users/Chris/Dropbox/SoapBox/*")
  end

  def write_file
    File.open("/Users/Chris/Dropbox/SoapBox/#{@body}", 'w') do |file|
      file << "#{@username.capitalize}"
    end
  end

  def read_files
     files = Dir.glob("/Users/Chris/Dropbox/SoapBox/*")
     puts files
  end
end

# Daniel example below
# for usernames
# all_bubble_handles = Dir.glob("/Users/Chris/Dropbox/SoapBox/*")
# all_bubble_handles.each do |file|
#   r = File.read(file)
#   username = r.read
#   created_at = r.birthtime

# feed_bubble_hash = { body: , username: , created_at: }
# for the body... File.basename(element)


# will need to sort by the time stamps (.timebirth)... format using the website from Wednesday to format date/time

# everything.each do |element|
#   the file = File.open(element)

# answers = {
# username: the_file.read,
# body: File.basename(element),
# created_at:
#}

# nb = Bubble.new(answers)
# puts nb.formatted_string  #this would be in bubble

# -------------------------------------------------------
# time_sorted_feed = entire_feed.sort_by {|x| File.birthtime(x)}.reverse

# entire_feed.sort_by do |x|
  # File.birthtime(x)
# end

# time_sorted_feed.each do |file|
#   single_feed_file = File.open(file)
#   conents = {
#     body: File.basename(single_feed_file),
#     username: File.read(single_feed_file)
#     created_at: single_feed_file.birthtime
#   }
