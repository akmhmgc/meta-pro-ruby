module SecondLevelModule
  def self.included(base)
    base.extend ClassMethods
  end

  def second_level_instnce_method
    'ok'
  end

  module ClassMethods
    def second_level_class_method
      'ok'
    end
  end
end

module FirstLevelModule
  def self.included(base)
    base.extend ClassMethods
  end

  def first_level_instnce_method
    'ok'
  end

  module ClassMethods
    def first_level_class_method
      'ok'
    end
  end

  include SecondLevelModule
end


class BaseClass
  # 最上位のモジュールのメソッドしか組み込まれ無い
  include FirstLevelModule
end

p BaseClass.respond_to?(:first_level_class_method) #=> true
p BaseClass.respond_to?(:second_level_class_method) #=> false
