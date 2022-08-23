# blockは定義された時点の束縛（変数の定義など）を連れていく

def sample
  x = 1
  binding.eval('x') #=> 1
  yield
end

x = 2
binding.eval('x') #=> 2

sample do
  binding.eval('x') #=> 2
  p x
end
