def a_method
  text = 'メソッド内のテキスト'
  yield
end

text = 'hello'
# blockは定義された時点での変数を囲い込む(closure)
a_method do
  p text
end
