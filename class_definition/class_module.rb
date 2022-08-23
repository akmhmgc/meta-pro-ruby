class Module
  def attr_accessor_hoge
    define_method :hoge do
      @hoge
    end

    define_method :hoge= do |hoge|
      @hoge = hoge
    end
  end
end

class MyClass
  attr_accessor_hoge
end

c = MyClass.new
c.hoge = 'hey yo'
p c.hoge
