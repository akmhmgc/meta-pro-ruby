class C
  def a_method
    "C#a_method"
  end
end

class D < C
end


obj = D.new

class << obj
  def a_singleton_method
    'obj#a_singleton_method'
  end
end

p obj.singleton_class #=> #<Class:#<D:0x00007fe30b95b8e8>>
p obj.singleton_class.superclass #=> D
p obj.singleton_class.superclass.superclass #=> C
