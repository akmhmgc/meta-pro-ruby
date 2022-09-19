C = Class.new
# Class#newが定義されているのでC.newを呼ぶことができる
p C.new #=> #<C:0x00007fd0a21d5090>

M = Module.new # Module.newできるのはModuleはClassのオブジェクトであるため
# Module#newは定義されていない
M.new #=>  undefined method `new' for M:Module (NoMethodError)
