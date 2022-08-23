def sample(names)
  p yield(names)
end

sample('a,b,c,d,e') do |names|
  names.split(',') # ここを自由に変更することで文字の区切り方法を柔軟に変更することができる
end
