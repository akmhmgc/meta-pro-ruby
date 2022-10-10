class C
  class << self
    def a_class_method
      'C.class_method'
    end
  end
end

# 特異クラスのインスタンスメソッドとして定義
p C.singleton_class.instance_methods(false) #=> a_class_method

# レシーバの特異メソッド
p C.methods(false) #=> a_class_method
