
class FarMar::Product

  attr_accessor :id, :name, :vendor_id

  def initialize(id, name, vendor_id)
    @id = id
    @name = name
    @vendor_id = vendor_id
  end

  def self.all
    all_instances = {}

    CSV.open("./support/products.csv", 'r').each do |line|
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
