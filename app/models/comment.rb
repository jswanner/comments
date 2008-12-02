class Comment < CouchRest::Model  
  before :save, :validate
  
  key_accessor :body, :uri
  
  view_by :uri
  
  def validate
    throw(:halt, false) unless body
    throw(:halt, false) unless uri
  end
end
