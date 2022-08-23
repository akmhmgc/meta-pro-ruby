module M1
  def hello
    'module hello'
  end
end

class SuperClass
  def hello
    "super hello"
  end
end


class ChildClass < SuperClass
  include M1

  def hello
    "super #{super}"  #=> super module hello
  end
end
