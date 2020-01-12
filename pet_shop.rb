#creating repo
def pet_shop_name(shop)
  return shop[:name]
end


def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,value)
  shop[:admin][:total_cash] += value
end

def pets_sold (shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,number_of_pets)
  shop[:admin][:pets_sold]+=number_of_pets
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(pet_shop,type)
  count=[]
  for pet in pet_shop[:pets]
    if pet[:breed] == type
      count.push(pet[:breed])
    end
  end
  return count #for reference, i had this out of scope so noting for myself to remind me of importance
end

def find_pet_by_name(shop, name)
  pet_name=nil
  for pet in shop[:pets]
    if name== pet[:name]
      pet_name=pet
    end
  end
  return pet_name
end

def remove_pet_by_name(shop,dog)
  for animal in shop[:pets]
    if animal[:name]==dog
      shop[:pets].delete(animal)
    end
  end
end

def add_pet_to_stock (shop,pet)
  shop[:pets].push(pet)
  return shop[:pets].count
end

def customer_cash (customer)
  cash=customer[:cash]
  return cash
end

def remove_customer_cash (customer, value)
  customer[:cash]-=value
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

#optional work below

def customer_can_afford_pet(customer,pet)
  if customer[:cash] >= pet[:price]
    return true
  else return false
  end
end

#integration tests
# def sell_pet_to_customer(shop,pet,customer)
#   if customer_can_afford_pet(customer,pet) == true
#     add_pet_to_customer(customer,pet)
#     remove_pet_by_name(shop,pet)
#     remove_customer_cash(customer,pet[:price])
#     add_or_remove_cash(shop,pet[:price])
#     increase_pets_sold(shop,1)
#   end
# end

# def sell_pet_to_customer(shop,pet,customer)
#   if find_pet_by_name(shop,pet) != nil
#     customer_can_afford_pet(customer,pet) == true
#     add_pet_to_customer(customer,pet)
#     remove_pet_by_name(shop,pet)
#     remove_customer_cash(customer,pet[:price])
#     add_or_remove_cash(shop,pet[:price])
#     increase_pets_sold(shop,1)
#   end
# end


#help from Steve to complete this- compare with code block two blocks above
def sell_pet_to_customer(shop,pet,customer)
  if pet != nil && customer_can_afford_pet(customer,pet)#this result returns true anyway and so my ==true in my version was not needed
      add_pet_to_customer(customer,pet)
      remove_pet_by_name(shop,pet)
      remove_customer_cash(customer,pet[:price])
      add_or_remove_cash(shop,pet[:price])
      increase_pets_sold(shop,1)
    end
end

#for my own reference ADD MORE COMMENTS as you goS
