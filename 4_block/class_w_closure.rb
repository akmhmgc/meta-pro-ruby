var = 1

class MyClass1
   p local_variables #=>[]
end

MyClass2 = Class.new do
  p local_variables #=>[:var]
end
