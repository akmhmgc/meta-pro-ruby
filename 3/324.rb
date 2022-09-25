class MyClass
  def self.my_class_method(*args)
    args.each do |arg|
      define_method(arg) do 
        "このメソッドは#{arg}です"
      end
    end
  end
end

class MyClass2 < MyClass
  # selfがクラス自身になるので、クラス定義内で呼び出すことができる
  my_class_method :hoge, :fuga
end

obj = MyClass2.new

p obj.hoge
