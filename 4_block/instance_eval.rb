class MyClass
  def initialize
    @v = 1
  end

  private

  def p_method
    'its private method'
  end
end

obj = MyClass.new

var = 2

obj.instance_eval do
  p var # instance_evalを定義した時の束縛にアクセスすることも可能
  p self # sefl = obj
  p p_method
  p @v
end
