require 'erb'

@test = 'aafdsfadfdfa'

class SampleController
  def index
    # SampleControllerクラスのインスタンス変数
    # html = "<p>この記事のタイトルは<%= title %></p>"
    # title = 'its title'
    # erb = ERB.new(html)
    # puts erb.result
    erb = ERB.new("<%= self %>\n")
    puts erb.result
    puts self
  end
end

s = SampleController.new
s.index
