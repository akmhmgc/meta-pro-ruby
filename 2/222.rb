class MyClass
  def my_method
    @v = 1
  end
end

# MyClassのクラスはClassなので、Class#newがあるはず
p MyClass.class #=> Class
p Class.instance_methods.grep(/new/) #=> [:new]

class MyClass2 < MyClass
end

p MyClass2.superclass #=> MyClass
p MyClass2.class #=> Class
