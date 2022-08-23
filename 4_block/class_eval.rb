class C
end

C.class_eval do
  p self #=> C
end

C.instance_eval do
  p self #=> C
end

c = C.new

c.instance_eval do
  p self #=> <C:0x00007f85de16c7e8>
end
