require "colorize"
class Bubble

  attr_accessor :username,
                :body,
                :created_at

  def initialize(attrs={})
    @username     = attrs[:username]
    @body         = attrs[:body]
    @created_at   = attrs[:created_at]
  end

  def formatted_string
      "#{username.light_red}:  #{body}
         #{created_at}
      ------------------------------------------------------------------------"
  end

  def save
    File.open("/Users/Chris/Dropbox/SoapBox/#{@body}", 'w') do |file|
      file << "#{@username}"
    end
  end

  def save_user
    File.open("/Users/Chris/Code/class_projects/soapbox/soapbox/.soapbox", 'w') do |file|
      file << "#{@username}"
    end
  end
end
