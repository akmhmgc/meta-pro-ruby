# インスタンス変数が共有されてしまう例
def sample(test)
  p test
  yield
end

@v = 0

sample('test1') do
  @v += 1
  p @v
end

sample('test2') do
  @v += 1
  p @v
end


# インスタンス変数を共有させないためにクリーンルームを使う方法

