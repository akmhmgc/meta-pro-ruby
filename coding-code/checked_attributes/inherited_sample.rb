class MySuperClass
  def self.inherited(sub)
    p "#{self}は#{sub}に継承されましたとさ。"
  end
end

class MyClass < MySuperClass
end
