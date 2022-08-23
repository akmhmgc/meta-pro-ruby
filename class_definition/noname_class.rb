c = Class.new do
  def hello
    p 'hello'
  end
end

p c.name  # この時点ではcは無名関数

# 接頭が大文字ではない場合クラス名として認識されない
myclass = c
p c.name #=> nil

# 接頭が大文字であればクラス名として認識される
MyClass = c
p c.name #=> MyClass
