class MyClass
  def initialize
    @v = 1
  end

  private
  def private_hello
    'privateb heelo'
  end
end

obj = MyClass.new

obj.instance_eval do 
  @v
  private_hello
  self #=> #<MyClass:0x00007fd34f178818 @v=1>: MyClassのインスタンスがselfとなる

  # オブジェクトの特異メソッドが定義される
  def hoge;end
end

obj.singleton_class.instance_methods(false) #=> [:hoge]


# メソッドを定義するとカレントクラスのインスタンスメソッドとして定義される

String.class_eval do
  # カレントクラスはStringクラスなので衣ンスタンスメソッドが定義される
  def str_instance_method
    'string instance method'
  end
end

'hoge'.str_instance_method #=> string intacne method


String.instance_eval do
  # カレントクラスはStringクラスの特異クラスなので、Stringをレシーバーに呼ぶことができる
  def str_singleton_method
  end
end

p String.singleton_class.instance_methods(false) #=> :str_singleton_metho
