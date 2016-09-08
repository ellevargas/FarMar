require 'awesome_print'
require 'chronic'
require 'csv'

module FarMar
end

# require_relative './lib/sharedmethods'
require_relative './lib/markets'
require_relative './lib/products'
require_relative './lib/sales'
require_relative './lib/vendors'

# TESTING ERRTHANG

# puts FarMar::Market.all
# print FarMar::Market.find("500")

# puts FarMar::Product.all
# print FarMar::Product.find("8193")

# puts FarMar::Sale.all
# print FarMar::Sale.find("12001")

# puts FarMar::Vendor.all
# print FarMar::Vendor.find("2690")
#
x = FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
puts y = x.products
