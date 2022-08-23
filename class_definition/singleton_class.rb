class MyClass
  def self.class_singleton_method
  end
end

# MyClass.singleton_class.instance_methods.grep(/class_s/)
# => [:class_singleton_method]
