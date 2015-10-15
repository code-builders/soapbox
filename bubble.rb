class SoapBox

  attr_accessor :username,
                :body,
                :created_at

  def initialize(attrs={})
    @username     = attrs[:username]
    @body         = attrs[:body]
    @created_at   = attrs[:created_at]
  end

  def write_file
    File.open("/Users/Chris/Code/class_projects/soapbox/trees/#{@body}.txt", 'w') do |file|
      file << "#{@username.capitalize}" 
    end
  end
end
