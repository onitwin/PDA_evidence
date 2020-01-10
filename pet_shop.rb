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
  return count #for reference, i had thuis out of scope so noting for myself to remind me of importance
end

def find_pet_by_name(shop, name)
  for dog_name in shop[:pets]
    if dog_name[:name]==name
      return dog_name
    end
  end
end
