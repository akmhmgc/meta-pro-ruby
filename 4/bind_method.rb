module MyModule
  def greeting
    p 'hello'
  end
end

# メソッドを切り離す
unbound = MyModule.instance_method(:greeting)

# 切り離されたメソッドは呼べない
# unbound.call #=> error
