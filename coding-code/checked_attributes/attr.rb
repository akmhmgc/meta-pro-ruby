def add_checked_attributes(klass, attr)
  klass.class_eval do
    define_method "#{attr}=" do |val|
      raise 'Invalid attribute' unless yield(val)

      p yield(val)
      instance_variable_set("@#{attr}", val)
    end

    define_method attr do
      instance_variable_get("@#{attr}")
    end
  end
end

class MyClass
end

# 例
add_checked_attributes(MyClass, :age) do |age|
  age > 10
end
