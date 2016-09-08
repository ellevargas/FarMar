
class FarMar::Vendor

  attr_reader :id, :name, :num_of_employees, :market_id

  def initialize(id, name, num_of_employees, market_id)
    @id = id
    @name = name
    @num_of_employees = num_of_employees
    @market_id = market_id
  end

  def self.all
    all_instances = {}

    CSV.open("./support/vendors.csv", 'r').each do |line|
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
