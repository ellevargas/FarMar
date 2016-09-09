
class FarMar::Market
  # extend FarMar::SharedMethods

  attr_reader :id, :name, :address, :city, :county, :state, :zip

  def initialize(array)
    @id = array[0]
    @name = array[1]
    @address = array[2]
    @city = array[3]
    @county = array[4]
    @state = array[5]
    @zip = array[6]
  end

  def self.all
    all_instances = {}

    CSV.open("./support/markets.csv", 'r').each do |line|
      id = line[0]
      all_instances[id] = self.new(line)
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances[id]
  end

  def vendors
    vendor_list = FarMar::Vendor.by_market(self.id)
    return vendor_list
  end

end
