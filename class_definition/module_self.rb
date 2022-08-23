# selfは常にオブジェクトのインスタンスの中にいる
p self # => main

# mainの中で定義したメソッド
def object_method
  p 'its object method!!'
end

class C
  p self  #=> C
  def greeting
    'hello'
  end
end
