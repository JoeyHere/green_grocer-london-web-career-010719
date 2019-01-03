def consolidate_cart(cart)
consolidated_hash = {}
  cart.each do |item|
    item.each do |food, price|
      if consolidated_hash[food] == nil
        consolidated_hash[food] = price 
        consolodated_hash[food][:count] = 1 
      end
      consolodated_hash[food][:count] += 1
    end
  end
consolodated_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
