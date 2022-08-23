def a_method(a, b)
  a + yield(a, b)
end

p a_method(1, 3) { |a, b| a + b * 2 }

# ブロックに引数を渡すということはそのブロック内の処理で渡ってきた値を利用することができるという意味
def b_method
  yield 'hello'
end

b_method do |word|
  p word
end
