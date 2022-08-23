def make_user(&block)
  User.new(&block)
end

class User
  attr_accessor :name, :age

  def initialize
    yield self if block_given?
  end
end

user1 = make_user do |user|
  user.name = 'takeshi'
  user.age = 33
end

p user1 #=><User:0x00007f8c37074598 @name="takeshi", @age=33>
