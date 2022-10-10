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
