
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
    return all_instances[id]
  end

  def market
    markets = FarMar::Market.all
    markets.each do |id, market|
      if market.id == market_id
        return market
      end
    end
  end

  def products
    products = []
    all_products = FarMar::Product.all
    all_products.each do |product_id, product|
      product.vendor_id == id ? products << product : false
    end
    return products
  end

  def sales
    sales = []
    all_sales = FarMar::Sale.all
    all_sales.each do |sale_id, sale|
      sale.vendor_id == id ? sales << sale : false
    end
    return sales # returned in cents
  end

def revenue
  transaction_total = 0
  sales.each do |transaction|
    transaction_total += transaction.amount_in_cents
  end
  return transaction_total
end

def cents_to_dollars
  dollars = (revenue/100.0).round(2)
end

def self.by_market(market_id)
  selected_markets = []
  all_vendors = self.all
  all_vendors.each do |id, vendor|
    vendor.market_id == market_id ? selected_markets << vendor : false
  end
  return selected_markets
end

end
