require 'awesome_print'
require 'csv'

module FarMar
end

require 'require_all'
require_all './lib'

# require_relative './lib/sharedmethods'
# require_relative './lib/markets'
# require_relative './lib/vendors'
# require_relative './lib/products'
# require_relative './lib/sales'

# TESTING ERRTHANG

# puts FarMar::Market.all
# print FarMar::Market.find("500")

# puts FarMar::Product.all
# print FarMar::Product.find("8193")

# puts FarMar::Sale.all
# print FarMar::Sale.find("12001")

# party = FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
# puts extra_party = party.cents_to_dollars

# puts FarMar::Vendor.all
# print FarMar::Vendor.find("2690")
#
# x = FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
# puts y = x.products
#
# purchase_time = Time.parse("2013-11-10 02:44:56 -0800")
# puts purchase_time

# whee = FarMar::Market.new(["500", "Montefiore Medical Center Farmers Market_Thursday", "111 E. 210th Street", "Bronx", "Bronx", "New York", "10467"])
# puts whee.vendors[0].id

# yay = FarMar::Market.find("2")
# puts yay.vendors
