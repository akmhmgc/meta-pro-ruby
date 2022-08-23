require 'byebug'

module ActiveRecord
  module Concern
    def self.extended(base) # :nodoc:
      # 自身をextendしたモジュールのインスタンス変数をセット
      base.instance_variable_set(:@_dependencies, [])
    end

    def append_features(base)
      if base.instance_variable_defined?(:@_dependencies)
        # concern(ActiveRecord::Concernをエクステンドするモジュール)がincludeした時の処理
  
        base.instance_variable_get(:@_dependencies) << self
        false
      else
        return false if base < self

        # 再帰的にincludeが呼ばれる
        # 常にbaseはconcernでないクラス（例ではMyClass）
        @_dependencies.each { |dep| base.include(dep) }

        super
        # MyClass.extend SecondLevelModule::ClassMethods
        # MyClass.extend FirstLevelModule::ClassMethods
        # が呼ばれる
        base.extend const_get(:ClassMethods) if const_defined?(:ClassMethods)
        base.class_eval(&@_included_block) if instance_variable_defined?(:@_included_block)
      end
    end

  end
end

module SecondLevelModule
  extend ActiveRecord::Concern

  module ClassMethods
    def second_level_class_method
      'ok'
    end
  end
end

module FirstLevelModule
  extend ActiveRecord::Concern

  module ClassMethods
    def first_level_class_method
      'ok'
    end
  end
  
  include SecondLevelModule
end



class MyClass
  include FirstLevelModule
end

p MyClass.respond_to?(:first_level_class_method) #=> true
p MyClass.respond_to?(:second_level_class_method) #=> true
