module M
  def my_method
    p 'hello'
  end
end

class MyClass
  class << self
    # 特異クラスに入る
    # ここで定義されたメソッドはMyClassのクラスメソッドになる
    include M
  end
end


MyClass.my_method
