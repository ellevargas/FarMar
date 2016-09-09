
class FarMar::Product

  attr_accessor :id, :name, :vendor_id

  def initialize(array)
    @id = array[0]
    @name = array[1]
    @vendor_id = array[2]
  end

  def self.all
    all_instances = {}

    CSV.open("./support/products.csv", 'r').each do |line|
      id = line[0]
      all_instances[id] = self.new(line)
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances["#{id}"]
  end

  def vendor
    vendors = FarMar::Vendor.all
    vendors.each do |id, vendor|
      if vendor.id == vendor_id
        return vendor
      end
    end
  end

  def sales
    sales = []
    all_sales = FarMar::Sale.all
    all_sales.each do |sale_id, sale|
      sale.product_id == id ? sales << sale : false
    end
    return sales
  end

  def number_of_sales
    sale_total = 0
    sales.each do |sale|
      sale.product_id == id ? sale_total += 1 : false
      # sale_total += 1 if sale.product_id == id
    end
    return sale_total
  end

  def self.by_vendor(vendor_id)
    selected_vendors = []
    all_products = self.all
    all_products.each do |id, product|
      product.vendor_id == vendor_id ? selected_vendors << product : false
    end
    return selected_vendors
  end

end
