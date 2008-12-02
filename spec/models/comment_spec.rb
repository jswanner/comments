require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Comment do
  
  before(:each) do
    reset_test_db!
  end

  describe "saving comments" do
    it "should be successful" do
      @comment = Comment.new(valid_comment_data)
      @comment.save.should be_true
    end
    
    it "should fail if no body" do
      data = valid_comment_data
      data.delete(:body)
      @comment = Comment.new(data)
      @comment.save.should be_false
    end
    
    it "should fail if no uri" do
      data = valid_comment_data
      data.delete(:uri)
      @comment = Comment.new(data)
      @comment.save.should be_false
    end
  end

end