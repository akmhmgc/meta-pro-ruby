class MyClass
  def new
    @var = 1
  end
end

module Sample
  def self.do
    my_class = MyClass.new
    my_class.new
  end
end


p Sample.do
