require 'awesome_print'
require 'require_all'
require_all 'lib'
require 'csv'

module FarMar
end

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

puts party = FarMar::Vendor.revenue

# puts FarMar::Vendor.all
# print FarMar::Vendor.find("2690")
#
# x = FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
# puts y = x.products
#
# purchase_time = Time.parse("2013-11-10 02:44:56 -0800")
# puts purchase_time
