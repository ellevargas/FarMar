require_relative '../farmar'
require_relative 'spec_helper'

describe "Testing FarMar::Vendor" do

  it "Testing to see if I can create a new instance of vendors" do
    test1 = FarMar::Vendor.new("2690", "Mann-Lueilwitz", "4", "500")
    expect(test1).must_be_instance_of(FarMar::Vendor)
  end

  it "Testing to see if I can return all vendors instances" do
    test2 = FarMar::Vendor.all
    expect(test2.length).must_equal(2690)
  end

  it "Testing to see if I can return a specific vendors instance" do
    test3 = FarMar::Vendor.find("2690")
    expect(test3.class).must_equal(Array)
  end

end
