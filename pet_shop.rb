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
