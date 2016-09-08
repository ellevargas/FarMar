
class FarMar::Vendor

  attr_reader :id, :name, :num_of_employees, :market_id

  def initialize(array)
    @id = array[0]
    @name = array[1]
    @num_of_employees = array[2]
    @market_id = array[3]
  end

  def self.all
    all_instances = {}

    CSV.open("./support/vendors.csv", 'r').each do |line|
      id = line[0]
      all_instances[id] = self.new(line)
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances["#{id}"]
  end

  def market
    markets = FarMar::Market.all
    markets.each do |id, market|
      if market.id == market_id
        return market
      end
    end
  end

  def product
    products = FarMar::Product.all
    products.each do |id, product|
      if product.id == id
        return product
      end
    end
  end

  def sale
    sales = FarMar::Sale.all
    sales.each do |id, sale|
      if sale.id == id
        return sale
      end
    end
  end

def revenue
  transaction_total = 0
  sale.each do |transaction|
    transaction_total += transaction
  end
  return transaction_total
end

end
