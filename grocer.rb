def consolidate_cart(cart)
consolidated_hash = {}
  cart.each do |item|
    item.each do |food, price|
      if consolidated_hash[food] == nil
        consolidated_hash[food] = price
        consolidated_hash[food][:count] = 1
      else
        consolidated_hash[food][:count] += 1
      end
    end
  end
consolidated_hash
end

def apply_coupons(cart, coupons)
  cart.each do |item, values|
    value.each do |coupon|
      if item == coupon[:item] && values[:count] > coupon[:num]
        cart[item][:count] -= coupon[:num]
        cart["#{item} W/COUPON"] = {}
        cart["#{item} W/COUPON"][:price] = coupon[:price]
        cart["#{item} W/COUPON"][:count] = 1
        cart["#{item} W/COUPON"][:clearance] = cart[item][:clearance]
      end
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
