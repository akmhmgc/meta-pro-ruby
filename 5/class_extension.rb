module MyModule
  def my_method
    'hello'
  end
end

# クラスの特異メソッドとしてmy_methodを取り込む
class MyClass
  class << self
    # カレントクラスはMyClassの特異クラスとなる
    include MyModule
  end
end

p MyClass.my_method

module MyModule2
  def my_method2
    'hello2'
  end
end

# 同様のことをextendを用いて達成する
MyClass.extend MyModule2

p MyClass.my_method2 #=> hello2

# オブジェクトに対してもいける
obj = MyClass.new
obj.extend MyModule2
p obj.my_method2 #=> hello2
