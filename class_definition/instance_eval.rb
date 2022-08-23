class C
  private 
  def hello
    p "hello"
  end
end

c = C.new

c.instance_eval do
  hello
end
