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

def stock_count(amount_of_stock)
  return amount_of_stock[:pets].count()
end

def pets_by_breed(pet_shop, dugtype)
  found_pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == dugtype
     found_pets.push(pet)
    end
  end
  return found_pets
end

def pets_by_breed(pet_shop, dugtype)
    not_found_pets = []
    for pet in pet_shop[:pets]
      if pet[:breed] == dugtype
       not_found_pets.push(pet)
      end
    end
    return not_found_pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
end




 

