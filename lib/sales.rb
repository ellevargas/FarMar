
class FarMar::Sale

  attr_reader :id, :amount_in_cents, :purchase_time, :vendor_id, :product_id

  def initalize(id, amount_in_cents, purchase_time, vendor_id, product_id)
    @id = id
    @amount_in_cents = amount_in_cents
    @purchase_time = purchase_time
    @vendor_id = vendor_id
    @product_id = product_id
  end

  def self.all
    all_instances = {}

    CSV.open("./support/sales.csv", 'r').each do |line|
      id = line[0]
      all_instances[id] = line
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances["#{id}"]
  end

end
