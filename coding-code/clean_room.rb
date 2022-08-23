# クリーンルーム無しでブロック実行
@var = 1

p = proc { p @var || 'not_defined' }
# ブロックが実行される時の制約を持ってくるので@var = 1
p self #=> main
p.call #=> 1

# クリーンルーム中で実行
clean_room = Object.new
# ブロックが実行された時の制約は、インスタンスの中なので@varは定義されていない
clean_room.instance_eval(&p) #=> 'not_defined'


@instance_val = "instance val"

local_val = "local val"
clean_room.instance_eval do
  p self #=> #<Object:0xxxxxxx>
  p local_variables #=> [:p, :clean_room, :local_val]
  p @instance_val #=> nil
end

def yeiling 
  yield
end

yeiling do
  p self #=> mail
  p @instance_val #=> instance_eval
end
