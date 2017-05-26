def pet_shop_name(title)
return @pet_shop[:name]
end

def total_cash(money)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(receiver, amount)
  return @pet_shop[:admin][:total_cash] += amount
end

