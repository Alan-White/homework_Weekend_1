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
  found_pets = [] # this creates an empty array.
  for pet in pet_shop[:pets] # this loops through the 6 hashes in the [:pets] array.
    if pet[:breed] == dugtype # if any of those 6 hashes has a |breed:"British Shorthair"| pair, it will match the pet_name arguement.
     found_pets.push(pet) # this will push any hashes containing the |breed:"British Shorthair"| pair into the found_pets array.
    end
  end
  return found_pets # this returns the array which contains 2 hashes.
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

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets] #this loops through the 6 hashes in the [:pets] array.
    if pet[:name] == pet_name #if any of those 6 hashes has a name: "Arthur" pair, it will match the pet_name arguement.
      pet_shop[:pets].delete(pet) #this finds the [:pets] array and deletes the hash that contains the name: "Arthur" pair.
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end




 

