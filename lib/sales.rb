require 'time'

class FarMar::Sale

  attr_reader :id, :amount_in_cents, :purchase_time, :vendor_id, :product_id

  def initialize(array)
    @id = array[0]
    @amount_in_cents = array[1].to_i
    @purchase_time = Time.parse(array[2])
    @vendor_id = array[3]
    @product_id = array[4]
  end

  def self.all
    all_instances = {}

    CSV.open("./support/sales.csv", 'r').each do |line|
      id = line[0]
      all_instances[id] = self.new(line)
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances[id]
  end

  def vendor
    vendors = FarMar::Vendor.all
    vendors.each do |id, vendor|
      if vendor.id == vendor_id
        return vendor
      end
    end
  end

  def product
    products = FarMar::Product.all
    products.each do |id, product|
      if product.id == product_id
        return product
      end
    end
  end

  def self.between(beginning_time, end_time)
    sales_between_range = []
    all_sales = self.all
    all_sales.each do |id, sale|
      sale.purchase_time >= Time.parse(beginning_time) && sale.purchase_time <= Time.parse(end_time) ? sales_between_range << sale : false
    end
    return sales_between_range
  end

end

# THINGS I WOULD LIKE TO DO:

# DRY principle - repeats in vendor methods across Product and Sale classes as well as in self.all and self.find methods in all classes (handle via module extension? inheritance?)
