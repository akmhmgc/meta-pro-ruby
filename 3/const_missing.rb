class Module
  def const_missing(const)
    puts "#{const}はありません"
  end
end


HOGE

