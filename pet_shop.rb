def pet_shop_name(title)
return title[:name]
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(received, amount)
  return received[:admin][:total_cash] += amount
end

def add_or_remove_cash(payout, amount)
  return payout[:admin][:total_cash] += amount
end

def pets_sold(sales)
  return sales[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sales)
  return pet_shop[:admin][:pets_sold] += sales
end

# def stock_count(amount_of_stock)
#   stock = 0
#   for pet in pets


