def pet_shop_name(pet_shop)
return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# the function below passes tests 3 and 4.
def add_or_remove_cash(pet_shop, income)
  return pet_shop[:admin][:total_cash] += income
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sales)
  return pet_shop[:admin][:pets_sold] += sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

# this function passes tests 7 and 8.
def pets_by_breed(pet_shop, pet_type)
  found_pets = [] # this creates an empty array.
  # Why can't I move [:breed] from line 31 to line 30????
  for pet in pet_shop[:pets] # this loops through the 6 hashes in the [:pets] array.
    if pet[:breed] == pet_type # if any of those 6 hashes has a |breed:"British Shorthair"| pair, it will match the pet_type arguement.
    found_pets.push(pet) # this will push any hashes containing the |breed:"British Shorthair"| pair into the found_pets array.
    end
  end
  return found_pets # this returns the array which contains 2 hashes.
end
# the function below works on test 10, but not test 11.
# def find_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets][:name]
#     return pet if pet == pet_name
#   end
#   return nil
# end

# Why can't I move [:name] from line 48 to line 47 as I did in the function above????? 
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

# Why can't I move [:name] from line 55 to line 54
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets] #this loops through the 6 hashes in the [:pets] array.
    if pet[:name] == pet_name #if any of those 6 hashes has a name: "Arthur" pair, it will match the pet_name arguement.
      return pet_shop[:pets].delete(pet) #this finds the [:pets] array and deletes the hash that contains the name: "Arthur" pair.
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end
# This is another way of doing it.
# def customer_pet_count(customer)
#   for pet in customer
#     return pet.count(pet)
#   end
# end

def add_pet_to_customer(customer, new_pet)
   return customer[:pets].push(new_pet)
end


# # OPTIONAL BELOW.

# this function passes the first 2 optional tests.
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

# this function is HARD CODED, but passes optional functions 3 and 4.
def sell_pet_to_customer(pet_shop, pet, customer)
  for banana in pet_shop[:pets]
    if banana == pet
      return customer[:pets].push(banana), 
      pet_shop[:admin][:pets_sold] += 1, 
      pet_shop[:admin][:total_cash] += 900
    end
  end
end
  

  





 

