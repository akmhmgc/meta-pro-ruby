def red_flag(val)
  puts "やばいです" if yield(val)
end


price = 100
# ブロックに監視したい条件を入れる
red_flag(price) do |v|
  v > 60
end
