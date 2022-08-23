#  上書きされたsource_locationはどうなるか

class C1
  def hoge
    p 'c1'
  end
end

m1 = C1.new.method(:hoge)
p m1.source_location

class C2 < C1
  def hoge
    p 'c2'
  end
end


m2 = C2.new
