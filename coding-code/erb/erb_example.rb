require 'erb'
require 'byebug'

module Sample
  def self.do
    html = File.read('template.html.erb')
    erb = ERB.new(html)
    erb.run
  end
end

Sample.do
