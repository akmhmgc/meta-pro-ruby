# yieldで呼び出す場合
def sample
  yield
end

b = proc { p 'im block' }
sample(&b)

# 引数をあらかじめブロックとして呼び出す方法
# yieldで呼び出す場合
def sample_2(b)
  b.call
end

b = proc { p 'im block' }
sample(b)


