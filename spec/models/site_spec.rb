require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Site do
  
  before(:all) do
    @site = Site.new(escaped_uri)
  end

  it "should unescape URI" do
    @site.uri.should == uri
  end

end