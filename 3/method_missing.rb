class MyClass
  API_PATH = 'https://api/endpoint/'
  def method_missing(method)
    puts File.join('https://api/endpoint/', method.to_s)
  end
end

# ラップしたAPIが拡張されても対応できる
MyClass.new.hoge
MyClass.new.fuga
