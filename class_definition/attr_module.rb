module M
  attr_accessor :hoge
end


class MyClass
  include M
end

c = MyClass.new
c.hoge = 3
p c.hoge
