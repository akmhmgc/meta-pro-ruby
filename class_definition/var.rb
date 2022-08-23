# インスタンス変数は定義した時のselfに所属する

class MyClass
  @var = 1 # self=> MyClass

  def self.read
    p self #=> MyClass
    p @var
  end

  def read
    p self #=> #<MyClass:0x00007f91be110a10>
    p @var
  end
end

c = MyClass.new
MyClass.read
c.read
