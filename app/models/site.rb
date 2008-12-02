class Site
  attr_accessor :uri
  
  def initialize(escaped_uri)
    self.uri = URI.unescape(escaped_uri)
  end
end
