class MyClass
  def initialize
    @var = 1
  end
  def var
    @var
  end
end

obj = MyClass.new

p obj.var #=> 1

new_var = 10

obj.instance_eval do 
  # レシーバーのコンテキスト評価
  @var = new_var
end

p obj.var #=> 10

