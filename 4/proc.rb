pr = proc do |x|
  p x * 3 
end

# pr.call(3)

# ブロックを受け取ってProcオブジェクトとして扱う
def my_method(&block)
  p block
  p block.class
  my_method2(&block)
end

def my_method2(&block)
  block.call
end

my_method{ p 'hello' }
