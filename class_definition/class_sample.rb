class MyClass
end

cd
c1 = MyClass.new
c2 = MyClass.new

MyClass.class_eval do
  # カレントクラスはMyClassクラス
  # ここで定義したメソッドはMyClassのインスタンスメソッドとして定義
  def hello
    'hello'
  end
end

p c1.respond_to?(:hello) #=> true
p c2.respond_to?(:hello) #=> true


c1.instance_eval do
  # カレントクラスはselfの特異クラス
  # ここで定義したメソッドはc1の特異クラスのインスタンスメソッドになる
  def c_hello
    'c_hello'
  end
end

p c1.respond_to?(:c_hello) #=> true
p c2.respond_to?(:c_hello) #=> false
