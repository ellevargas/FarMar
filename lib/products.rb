
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

end
