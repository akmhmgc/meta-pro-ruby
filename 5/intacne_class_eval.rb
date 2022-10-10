class MyClass
  def initialize
    @v = 1
  end

  private
  def private_hello
    p 'privateb heelo'
  end
end

obj = MyClass.new

obj.instance_eval do 
  p @v
  private_hello
  p self #=> #<MyClass:0x00007fd34f178818 @v=1>: MyClassのインスタンスがselfとなる

  # オブジェクトの特異メソッドが定義される
  def hoge;end
end

p obj.singleton_class.instance_methods(false) #=> [:hoge]


