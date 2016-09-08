
class FarMar::Sale

  attr_reader :id, :amount_in_cents, :purchase_time, :vendor_id, :product_id

  def initialize(array)
    @id = array[0]
    @amount_in_cents = array[1].to_i
    @purchase_time = array[2]
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
    return all_instances["#{id}"]
  end

end
