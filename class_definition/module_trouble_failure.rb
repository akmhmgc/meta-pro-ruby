module M
  # selfはMなので、Mの特異クラスにメソッドを定義しただけになっている？
  def self.my_method
    p 'hello'
    p self
  end

  def my_ins_method
    p 'instance method!!'
  end
end

class SuperClass
  def self.super_hello
    p 'super hello'
  end
end

class MyClass < SuperClass
  # includeはそもそも何をしているのかあやふや
  include M
  # helloをクラスの特異メソッドとして定義しなければならない
end

# MyClass.hello #=> error
MyClass.new.my_ins_method #=> 'instance method!!'
MyClass.super_hello #=> 'super helo'
