str = "im tarou"

def str.title?
  # str.upcase == str
  p self #selfはレシーバーを表すので文字列
end

str.title?


class MyClass
  # self = MyClassなので得意メソッドを定義しているのと同じ
  def MyClass.hello
    p 'hello'
  end
end

MyClass.hello
