require 'byebug'

module M
  def self.append_features(base)
    super
    p base.ancestors
  end

  module ClassMethods
  end
end


class MyClass
  include M
end
