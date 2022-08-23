class Integer
  alias real_plus +

  def +(other)
    real_plus(other).real_plus(1)
  end
end
