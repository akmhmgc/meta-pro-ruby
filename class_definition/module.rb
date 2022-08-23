Var = "ルートレベルの定数"

module M1
  # 定数はmoduleのスコープを超えることが可能
  Var = 1

  module M2
    Var = 2
    p M1::Var
    p Var
    p ::Var # => ルートレベルの定数
  end
end
