# good place for wrapping a module around repeated methods between classes

# require_relative '../farmar'
# require 'csv'

class FarMar::SharedMethods

  # attr_reader :all_accounts

  def self.all(file)
    all_accounts = {}

    CSV.open(file, 'r').each do |line|
      id_key = line[0]

      all_accounts[id_key] = line
    end
    return all_accounts
  end

  def self.find(id, file)
    all_accounts = self.all(file)
    return all_accounts[:id]
  end

end
