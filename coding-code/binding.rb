class MyClass
  def get_binding
    @var = 1
    binding
  end
end

c = MyClass.new
b = c.get_binding

doc = <<"EOS" # ここをダブルコーテーションで囲う
  def self.s_method
    p "singleton method here!!"
  end
EOS

# evalで実行する
eval doc, b

c.s_method
