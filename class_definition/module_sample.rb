module PatronSpecHelper
  def http_request
    puts 'hoge'
  end
end

class Hoge
  include PatronSpecHelper
end

hoge = Hoge.new
hoge.http_request
