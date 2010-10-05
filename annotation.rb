module Annotation
  
  class AnnotationData
    attr_accessor :annotation
    def initialize
      @annotation = {}
      @purpose = []
    end
    def add_purpose(purpose_name)
      @purpose << purpose_name
    end
    def add_method(method_name)
      return if @purpose.empty?
      @annotation[method_name] = @purpose
      @purpose = []
    end
    def dispatch(this,method_name)
      @annotation[method_name].each do |purpose|
        this.send(purpose, method_name)
      end
    end
  end

  def annotation(purpose)
    @annotations ||= AnnotationData.new
    @annotations.add_purpose(purpose)
  end

  def method_added(method_name)
    @annotations.add_method(method_name)
    @annotations.dispatch(self, method_name)
  end
end
