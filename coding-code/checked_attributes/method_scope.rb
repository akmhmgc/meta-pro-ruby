p local_variables

# ローカル変数はインスタンスに所属するのではなくスコープに所属する
# 一つのスコープが閉じてから開くまでの空間にローカル変数は所属している
def define_methods
  count = 0
  Kernel.send :define_method, :count do
    count
  end

  Kernel.send :define_method, :add do |num|
    p self
    count += num
  end
end

@ins_var = 2
