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
