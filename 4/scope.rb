# スコープをこじ開けて変数を共有する方法

var = '最高！'

MyClass = Class.new do
  p var
  define_method :hoge do
    p var
  end
end


obj = MyClass.new
obj.hoge #=> 最高
