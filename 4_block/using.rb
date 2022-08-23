module Kernel
  def with
      yield
  ensure
      p 'mission was completed!!'
  end
end
