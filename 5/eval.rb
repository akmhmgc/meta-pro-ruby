str = 'hoge'

class << str
  def m_str;end
end

# Stringインスタンスであるstrの特異クラスがm_strを持っている
puts str.method(:m_str).owner
