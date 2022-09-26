class MyClass
  def hoge
    p 'hoge'
  end
end

bined = MyClass.new.method(:hoge)
# これは呼べる
p bined
bined.call


module MyModule
  def greeting
    p 'hello'
  end
end

# メソッドを切り離す
unbound = MyModule.instance_method(:greeting)

# 切り離されたメソッドは呼べない
# unbound.call #=> error

# メソッドをつける
String.send :define_method, :greeting, unbound


'hoge'.greeting #=> 'hello'
