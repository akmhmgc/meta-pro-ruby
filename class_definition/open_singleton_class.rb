class MyClass
  class << self
    p self #=> <Class:MyClass> 特異クラスが規定される
  end
end


c = MyClass.new
