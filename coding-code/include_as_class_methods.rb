module M
  def self.included(base)
    # base=> includeを呼び出したレシーバー
    base.extend(ClassMethod)
  end

  module ClassMethod
    def c_method
      'c_method'
    end
  end

  def i_method
    'i_method'
  end
end

class MyClass
  # MyClass.extend(M::ClassMethod)が実行される
  include M
end

p MyClass.respond_to?(:c_method) #=> true
p MyClass.new.respond_to?(:i_method) #=> true
