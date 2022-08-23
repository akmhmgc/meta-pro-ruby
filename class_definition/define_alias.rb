class MyClass
  def hello
    p 'hello'
  end
end

class MyClass
  # #helloに別名をつける
  alias hello_without_goodbye hello

  # #helloが再定義される
  # 新しいメソッドを作成して元の名前をつけているだけ
  def hello
    # 元の#hello
    hello_without_goodbye
    p 'goodbye'
  end
end
