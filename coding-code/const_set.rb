module M
  c = const_set(:MyClass, Class.new)

  c.module_eval do
    def self.c_method
      'c_method'
    end
  end
end

p M::MyClass.c_method
