def a_method(a, b)
  yield(a, b)
end

p a_method(1, 2) { |a, b| a + b }
