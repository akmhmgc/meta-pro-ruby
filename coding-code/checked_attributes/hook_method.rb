module CheckAttribute
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def add_checked_attribute(attr)
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
end

class MyClass
  include CheckAttribute

  add_checked_attribute(:age) do |age|
    age > 18
  end
end
