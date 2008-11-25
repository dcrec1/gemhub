require File.expand_path(File.dirname(__FILE__) + "/../lib/gemhub.rb")

describe GemHub do
  it "should have a version" do
    GemHub::VERSION.should_not be_nil
  end
end
