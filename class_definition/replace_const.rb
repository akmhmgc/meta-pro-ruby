module M
end

class C
  def hoge
    p 'hoge'                   
  end
end

c = Class.new(C) do
  def fuga
    p 'fuga'
  end
end

M.const_set(:Test, c)

cls = M::Test.new

p cls.method(:fuga).source_location
cls.fuga
