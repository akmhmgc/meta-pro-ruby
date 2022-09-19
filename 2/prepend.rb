module M
  def my_method
    '上書きします'
  end
end

class C
  prepend M
  def my_method
    '元のメソッド'
  end
end

p C.new.my_method #=> '上書きします'
p C.ancestors #=> [M, C, Object, Kernel, BasicObject]
