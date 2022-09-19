class MyClass
  def my_method
    @v = 1
  end
end

obj = MyClass.new

# インスタンス変数はオブジェクトに所属している
p obj.instance_variables #=> []
obj.my_method
p obj.instance_variables #=> [:@v]

