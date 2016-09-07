
class FarMar::Market
  # extend FarMar::SharedMethods

  attr_reader :id, :name, :address, :city, :county, :state, :zip

  def initialize(id, name, address, city, county, state, zip)
    @id = id
    @name = name
    @address = address
    @city = city
    @county = county
    @state = state
    @zip = zip
  end

  def self.all
    all_instances = {}

    CSV.open("./support/markets.csv", 'r').each do |line|
      id = line[0]
      # line.delete_at(0) < if I need to show everything but id
      all_instances[id] = line
    end
    return all_instances
  end

  def self.find(id)
    all_instances = self.all
    return all_instances["#{id}"]
  end

  def vendors
    # if FarMar::Vendor =
    #
    # spit out a list of vendors whose market id matches a market id you input
    #
    # get market_id parameter
    # take market_id parameter and if it matches the market id in vendor (in each array it's item -1 bruh) cough those vendors up

  end

end
