def add_method_to(a_class)
  a_class.instance_eval do
    def hello
      'hello'
    end
  end

  # selfだけではなくカレントクラスも変更する
  a_class.class_eval do
  end
end

class C; end

add_method_to(C)

# c = C.new
# c.greeting
