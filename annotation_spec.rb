require "rspec"
require "./annotation.rb"

module Filters
  def before_filter(method_name)
    @before_filter_called ||= 0
    @before_filter_called += 1
  end

  def after_filter(method_name) 
    @after_filter_called ||= 0
    @after_filter_called += 1
  end
end

class Test
  extend Filters
  extend Annotation

  annotation(:before_filter)
  annotation(:after_filter)
  def some_method
  end

  annotation(:after_filter)
  def some_other_method
  end
end

describe "annotations" do
  it "collects the information" do
    annotations = Test.instance_variable_get(:@annotations).annotation
    annotations[:some_method].should_not be_nil
    annotations[:some_method].should include(:before_filter)
    annotations[:some_method].should include(:after_filter)
  end

  it "calls annotation purposes" do
    Test.instance_variable_get(:@before_filter_called).should == 1
    Test.instance_variable_get(:@after_filter_called).should == 2
  end

  it "methods exist" do
    Test.methods.should include(:before_filter)
    Test.methods.should include(:after_filter)

    Test.methods.should include(:annotation)
  end
end
